module "myserver"{
  source="../modules/ubuntu"
  region="ap-south-1"
  ami_id="ami-007d5db58754fa284"
  instance="t2.micro"
  tag="ubuntu18"
} 

