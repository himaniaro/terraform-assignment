{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 resource "aws_security_group" "edifecs_ec2_sg" \{\
  name        = "edifecs_ec2_sg"\
  description = "Allow SSH and HTTP traffic"\
  vpc_id      = var.vpc_id\
\
  ingress \{\
    from_port   = 22\
    to_port     = 22\
    protocol    = "tcp"\
    cidr_blocks = ["0.0.0.0/0"]\
  \}\
\
  ingress \{\
    from_port   = 80\
    to_port     = 80\
    protocol    = "tcp"\
    cidr_blocks = ["0.0.0.0/0"]\
  \}\
\
  egress \{\
    from_port   = 0\
    to_port     = 0\
    protocol    = "-1"\
    cidr_blocks = ["0.0.0.0/0"]\
  \}\
\}\
\
resource "aws_security_group" "edifecs_alb_sg" \{\
  name        = "edifecs_alb_sg"\
  description = "Allow HTTP traffic"\
  vpc_id      = var.vpc_id\
\
  ingress \{\
    from_port   = 80\
    to_port     = 80\
    protocol    = "tcp"\
    cidr_blocks = ["0.0.0.0/0"]\
  \}\
\
  egress \{\
    from_port   = 0\
    to_port     = 0\
    protocol    = "-1"\
    cidr_blocks = ["0.0.0.0/0"]\
  \}\
\}\
\
output "ec2_sg_id" \{\
  value = aws_security_group.edifecs_ec2_sg.id\
\}\
\
output "alb_sg_id" \{\
  value = aws_security_group.edifecs_alb_sg.id\
\}\
}