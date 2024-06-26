# Create the VPC
resource "aws_vpc" "main" {
  cidr_block           = var.vpc_cidr_block
  instance_tenancy     = var.instance_tenancy
  enable_dns_support   = var.enable_dns_support
  enable_dns_hostnames = var.enable_dns_hostnames
  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-vpc",
      Environment = var.environment,
      Owner       = var.owner,
      Application = var.application
    },
    var.tags
  )
}


