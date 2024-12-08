resource "aws_security_group" "ASG01-TG01" {
  name        = "ASG01-TG01"
  description = "ASG01-TG01"
  vpc_id      = aws_vpc.Tokyo-HQ-VPC.id

  ingress {
    description = "Tokyo"
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "ASG01-TG01"
    Service = "Tokyo_SG"
  }

}

resource "aws_security_group" "ASG02-TG02" {
  name        = "ASG02-TG02"
  description = "ASG02-TG02"
  vpc_id      = aws_vpc.NewYork-HQ-VPC.id

  ingress {
    description = "NewYork"
    from_port   = 80
    to_port     = 80
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "NewYorkSG"
    Service = "NewYork"
  }

}

resource "aws_security_group" "ASG03-TG03" {
  name        = "ASG03-TG03"
  description = "ASG03-TG03"
  vpc_id      = aws_vpc.London-HQ-VPC.id

  ingress {
    description = "London"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "LondonSG"
    Service = "London"
  }

}

resource "aws_security_group" "ASG04-TG04" {
  name        = "ASG04-TG04"
  description = "ASG04-TG04"
  vpc_id      = aws_vpc.Sao_Paulo-HQ-VPC.id

  ingress {
    description = "Sao_Paulo"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "ASG04-TG04"
    Service = "Sao_Paulo"
  }

}

resource "aws_security_group" "ASG05-TG05" {
  name        = "ASG05-TG05"
  description = "ASG05-TG05"
  vpc_id      = aws_vpc.Australia-HQ-VPC.id

  ingress {
    description = "Austrailia"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "ASG05-TG05"
    Service = "Austrailia"
  }

}

resource "aws_security_group" "ASG06-TG06" {
  name        = "ASG06-TG06"
  description = "ASG06-TG06"
  vpc_id      = aws_vpc.Hong_Kong-HQ-VPC.id

  ingress {
    description = "Hong_Kong"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "ASG06-TG06"
    Service = "Hong_Kong"
  }

}

resource "aws_security_group" "ASG07-TG07" {
  name        = "ASG07-TG07"
  description = "ASG07-TG07"
  vpc_id      = aws_vpc.NorCal-HQ-VPC.id

  ingress {
    description = "NorCal"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name    = "ASG07-TG07"
    Service = "NorCal"
  }

}