data "aws_region" "current" {}
data "aws_caller_identity" "current" {}

module "n8n" {
  source  = "elasticscale/n8n/aws"
  version = "2.0.2"
  certificate_arn = "arn:aws:acm:eu-central-2:311141537066:certificate/f72c247a-17f8-48a0-a298-296bad22fe4d"
  container_image = "1.80.3"
  prefix = "engine"
  url = "engine.r3to.org"
}
