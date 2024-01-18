terraform {
  required_providers {
    newrelic = {
      source  = "newrelic/newrelic"
      version = "~> 2.44"
    }
  }
}
provider "newrelic" {
  account_id = var.account_id  # Your New Relic account ID
  api_key = var.api_key # Your New Relic user key
  region = var.newrelic_region        # US or EU (defaults to US)
}
variable "api_key" {}
variable "newrelic_region" {}
variable "account_id" {}