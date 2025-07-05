resource "aws_instance" "ec2_instance" {
  ami           = "ami-05ffe3c48a9991133"
  instance_type = "t3.micro"
  subnet_id     = "subnet-00b9e65f606059e6a"
  associate_public_ip_address = true

  tags = merge(
    {
      Name        = "fasttrack-prod-instance"
      Environment = "prod"
    },
  )
}
