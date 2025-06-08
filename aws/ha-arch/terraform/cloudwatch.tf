resource "aws_cloudwatch_metric_alarm" "high_cpu_alarm" {
  alarm_name          = "${var.project}-cpu-high"
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = 2
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = 120
  statistic           = "Average"
  threshold           = var.alarm_cpu_threshold
  alarm_description   = "Alarma si la CPU supera el ${var.alarm_cpu_threshold}%"
  dimensions = {
    AutoScalingGroupName = module.ec2.asg_name
  }
}
