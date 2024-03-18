resource "aws_instance" "ubuntu" {
  ami           = "ami-09563a10670fc573c"
  instance_type = "t2.micro"
  user_data = <<-EOF
                #!/bin/bash
                sudo apt update
                sudo ansible-playbook playbook.yml -c local -i localhost -K
                EOF
}