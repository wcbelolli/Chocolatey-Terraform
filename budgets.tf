terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.5.0"
    }
  }
}

provider "aws" {
  region = "eu-west-1"
}

resource "aws_budgets_budget" "like-and-subscribe" {
  name              = "monthly-budget"
  budget_type       = "COST"
  limit_amount      = "10.00"
  limit_unit        = "USD"
  time_unit         = "MONTHLY"
  time_period_start = "2025-07-09_00:01"
}
