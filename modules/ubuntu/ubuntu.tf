provider "aws" {
  region     = "${var.region}"
}

resource "aws_instance" "ubuntu18" {
  ami           = "${var.ami_id}"
  instance_type = "${var.instance}"

  tags {

    Name = "${var.tag}"

  }
}
