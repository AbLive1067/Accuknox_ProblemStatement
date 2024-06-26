resource "aws_internet_gateway" "main" {
  vpc_id = aws_vpc.main.id

  tags = merge(
    {
      Name        = "${var.environment}-${var.application}-internet-gateway",
      Environment = var.environment,
      Owner       = var.owner,
      Application = var.application
    },
    var.tags
  )
}
