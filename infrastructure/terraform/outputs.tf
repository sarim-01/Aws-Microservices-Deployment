output "ec2_public_ip" {
  description = "Public IP of K8s node"
  value       = aws_instance.k8s_node.public_ip  # Prints IP after creation
}

output "ec2_public_dns" {
  description = "Public DNS of K8s node"
  value       = aws_instance.k8s_node.public_dns  # Prints DNS name
}

output "ssh_command" {
  description = "SSH command to connect"
  value = "ssh -i C:/keys/project3-key-mumbai.pem ubuntu@${aws_instance.k8s_node.public_ip}"
}

output "instance_id" {
  description = "EC2 instance ID"
  value       = aws_instance.k8s_node.id  # For AWS CLI commands
}