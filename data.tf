#Fetch latest AMI ID for EC2 Amazon Linux2 instances

data "aws_ssm_parameter" "my-amzn2-linux-ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}