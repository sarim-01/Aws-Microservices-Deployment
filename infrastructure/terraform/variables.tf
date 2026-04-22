variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "ap-south-1"  # Mumbai region
}

variable "project_name" {
  description = "Project name for resource tagging"
  type        = string
  default     = "microservices-deploy"  # Prefix for all resource names
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"  
}

variable "ssh_key_name" {
  description = "Name of existing SSH key pair"
  type        = string
  default     = "project3-key-mumbai" 
}

variable "allowed_ssh_cidr" {
  description = "CIDR blocks allowed to SSH"
  type        = list(string)
  default     = ["0.0.0.0/0"] 
}