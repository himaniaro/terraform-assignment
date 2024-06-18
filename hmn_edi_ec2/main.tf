{\rtf1\ansi\ansicpg1252\cocoartf2580
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx566\tx1133\tx1700\tx2267\tx2834\tx3401\tx3968\tx4535\tx5102\tx5669\tx6236\tx6803\pardirnatural\partightenfactor0

\f0\fs24 \cf0 resource "aws_instance" "edifecs_ec2" \{\
  ami           = var.ami_id\
  instance_type = var.instance_type\
  security_groups = [module.security_groups.edifecs_ec2_sg.name]\
\
  tags = \{\
    Name = "EdifecsWebServerInstance"\
  \}\
\}\
\
output "instance_id" \{\
  value = aws_instance.edifecs_ec2.id\
\}\
}