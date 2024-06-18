{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 resource "aws_lb" "edifecs_lb" \{\
  name               = "edifecs-lb"\
  internal           = false\
  load_balancer_type = "application"\
  security_groups    = [module.security_groups.edifecs_alb_sg.name]\
  subnets            = var.subnet_ids\
\
  enable_deletion_protection = false\
\}\
\
resource "aws_lb_listener" "edifecs_listener" \{\
  load_balancer_arn = aws_lb.edifecs_lb.arn\
  port              = "80"\
  protocol          = "HTTP"\
\
  default_action \{\
    type = "forward"\
    target_group_arn = aws_lb_target_group.edifecs_tg.arn\
  \}\
\}\
\
resource "aws_lb_target_group" "edifecs_tg" \{\
  name     = "edifecs-tg"\
  port     = 80\
  protocol = "HTTP"\
  vpc_id   = var.vpc_id\
\
  health_check \{\
    interval            = 30\
    path                = "/"\
    protocol            = "HTTP"\
    timeout             = 5\
    healthy_threshold   = 5\
    unhealthy_threshold = 2\
  \}\
\}\
\
resource "aws_lb_target_group_attachment" "edifecs_tg_attachment" \{\
  target_group_arn = aws_lb_target_group.edifecs_tg.arn\
  target_id        = module.ec2.instance_id\
  port             = 80\
\}\
\
output "dns_name" \{\
  value = aws_lb.edifecs_lb.dns_name\
\}\
}