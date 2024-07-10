##################################################
# Create IAM ECR repos for storing Docker images #
##################################################

resource "aws_ecr_repository" "app" {
  name                 = "${var.project}-app"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    # NOTE: Update to true for real deployment
    scan_on_push = false
  }
}

resource "aws_ecr_repository" "proxy" {
  name                 = "${var.project}-proxy"
  image_tag_mutability = "MUTABLE"
  force_delete         = true

  image_scanning_configuration {
    # NOTE: Update to true for real deployment
    scan_on_push = false
  }
}