output "launch_template_id" {
  value = aws_launch_template.web.id
}

output "security_group_id" {
  value = aws_security_group.ec2_sg.id
}
output "asg_name" {
  value = aws_autoscaling_group.web_asg.name
}

output "target_group_arn" {
  value = aws_lb_target_group.web_tg.arn
}
output "alb_dns_name" {
  value = aws_lb.web_alb.dns_name
}