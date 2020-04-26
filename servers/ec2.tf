data "aws_ami" "ubuntu" {
  most_recent = true

  filter {
    name   = "name"
    values = ["IaaSWeek-${var.hash_commit}"]
  }

  owners = ["777015859311"] # Gomex ID, não mude sem mudar o filtro

}

resource "aws_instance" "web" {
    count         = "${var.servers}"
    ami           = "${data.aws_ami.ubuntu.id}"
    instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

resource "aws_instance" "west" {
    provider = "aws.west"
    ami           = "ami-06d51e91cea0dac8d"
    instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}