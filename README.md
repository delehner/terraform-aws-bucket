# Terraform - Bucket Module

This Terraform module provides S3 features to help you easily create and manage S3 buckets.

## Usage

Here’s a code example of how you can use this module:

```hcl
module "my_bucket" {
  source  = "app.terraform.io/<organization>/bucket/aws"
  version = "~> 1"

  name   = "my_bucket"
  policy = data.aws_iam_policy_document.test.json
}
```
