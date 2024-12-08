resource "aws_autoscaling_group" "Tokyo_ASG" {
  provider              = aws.Tokyo
  name_prefix           = "tokyo-auto-scaling-group-"
  min_size              = 1
  max_size              = 3
  desired_capacity      = 2
  vpc_zone_identifier   = [
    aws_subnet.private-ap-northeast-1a.id,
    aws_subnet.private-ap-northeast-1b.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.Tokyo_TG.arn]

  launch_template {
    id      = aws_launch_template.Tokyo_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  tag {
    key                 = "Tokyo_ASG"
    value               = "Tokyo_ASG"
    propagate_at_launch = true
  }
}

resource "aws_autoscaling_group" "New_York_ASG" {
  provider              = aws.New-York
  name_prefix           = "New-York-auto-scaling-group-"
  min_size              = 1
  max_size              = 3
  desired_capacity      = 2
  vpc_zone_identifier   = [
    aws_subnet.private-us-east-1a.id,
    aws_subnet.private-us-east-1b.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.New_York_TG.arn]

  launch_template {
    id      = aws_launch_template.New_York_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  tag {
    key                 = "New-York-ASG"
    value               = "New-York-ASG"
    propagate_at_launch = true
  }
}

resource "aws_autoscaling_group" "London_ASG" {
  provider              = aws.London
  name_prefix           = "london-auto-scaling-group-"
  min_size              = 1
  max_size              = 3
  desired_capacity      = 2
  vpc_zone_identifier   = [
    aws_subnet.private-eu-west-2a.id,
    aws_subnet.private-eu-west-2b.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.London_TG.arn]

  launch_template {
    id      = aws_launch_template.London_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  tag {
    key                 = "London_ASG"
    value               = "London_ASG"
    propagate_at_launch = true
  }
}

resource "aws_autoscaling_group" "Sao-Paulo-ASG" {
  provider              = aws.Sao-Paulo
  name_prefix           = "Sao-Paulo-auto-scaling-group-"
  min_size              = 1
  max_size              = 3
  desired_capacity      = 2
  vpc_zone_identifier   = [
    aws_subnet.private-sa-east-1a.id,
    aws_subnet.private-sa-east-1b.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.Sao-Paulo-TG.arn]

  launch_template {
    id      = aws_launch_template.Sao-Paulo-LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  tag {
    key                 = "Sao-Paulo-ASG"
    value               = "Sao-Paulo-ASG"
    propagate_at_launch = true
  }
}

resource "aws_autoscaling_group" "Australia_ASG" {
  provider              = aws.austrailia
  name_prefix           = "australia-auto-scaling-group-"
  min_size              = 1
  max_size              = 3
  desired_capacity      = 2
  vpc_zone_identifier   = [
    aws_subnet.private-south-east-2a.id,
    aws_subnet.private-south-east-2b.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.Australia_TG.arn]

  launch_template {
    id      = aws_launch_template.Australia_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  tag {
    key                 = "Australia_ASG"
    value               = "Australia_ASG"
    propagate_at_launch = true
  }
}

resource "aws_autoscaling_group" "HongKong_ASG" {
  provider              = aws.HongKong
  name_prefix           = "HongKong-auto-scaling-group-"
  min_size              = 1
  max_size              = 3
  desired_capacity      = 2
  vpc_zone_identifier   = [
    aws_subnet.private-ap-east-1a.id,
    aws_subnet.private-ap-east-1b.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.HongKong_TG.arn]

  launch_template {
    id      = aws_launch_template.HongKong_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  tag {
    key                 = "HongKong_ASG"
    value               = "HongKong_ASG"
    propagate_at_launch = true
  }
}

resource "aws_autoscaling_group" "California_ASG" {
  provider              = aws.Caifornia
  name_prefix           = "California-auto-scaling-group-"
  min_size              = 1
  max_size              = 3
  desired_capacity      = 2
  vpc_zone_identifier   = [
    aws_subnet.private-us-west-1a.id,
    aws_subnet.private-us-west-1b.id
  ]
  health_check_type          = "ELB"
  health_check_grace_period  = 300
  force_delete               = true
  target_group_arns          = [aws_lb_target_group.California_TG.arn]

  launch_template {
    id      = aws_launch_template.California_LT.id
    version = "$Latest"
  }

  enabled_metrics = ["GroupMinSize", "GroupMaxSize", "GroupDesiredCapacity", "GroupInServiceInstances", "GroupTotalInstances"]

  # Instance protection for launching
  initial_lifecycle_hook {
    name                  = "instance-protection-launch"
    lifecycle_transition  = "autoscaling:EC2_INSTANCE_LAUNCHING"
    default_result        = "CONTINUE"
    heartbeat_timeout     = 60
    notification_metadata = "{\"key\":\"value\"}"
  }
  tag {
    key                 = "California_ASG"
    value               = "California_ASG"
    propagate_at_launch = true
  }
}