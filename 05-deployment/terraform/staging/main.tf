resource "aws_instance" "staging_instance" {
  ami           = "ami-05ffe3c48a9991133"
  instance_type = "t2.micro"
  subnet_id     = "subnet-0fab5d96e16ff294e"

  tags = merge(
    {
      Name        = "fasttrack-staging-instance"
      Environment = "staging"
      Owner      = "Fasttrack-QA-Team"
      Department = "Fasttrack-QA"
    }
  )
}

resource "aws_instance" "bastion_host" {
  ami           = "ami-05ffe3c48a9991133"
  instance_type = "t2.micro"
  subnet_id     = "subnet-00b9e65f606059e6a"
  associate_public_ip_address = true
  key_name      = "bastion-keypair"

  tags = {
    Name = "bastion-host"
    Environment = "staging"
    Owner      = "Fasttrack-QA-Team"
    Department = "Fasttrack-QA"
  }
}

