module "myserver"{
  source="../modules/ubuntu"
  region="ap-south-1"
  ami_id="ami-0a574895390037a62"
  instance="t2.micro"
  tag="ubuntu16"
} 

