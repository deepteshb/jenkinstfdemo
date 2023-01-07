locals {

  prefix-region = "ap-south-1"
  prefix-dept = "ISG"
  prefix-cost-center = "DeliveryUnit1"
}

#===============================================================
resource "aws_instance" "web" {
  ami           = var.ami_id_for_dc
  instance_type = var.instance_type_for_dc

  tags = {
    # join(seperator, list)
    Name = "${join("-", [local.prefix-region, local.prefix-dept])}"
  }
}