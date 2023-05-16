# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "3.4.3"
    }
  }
  required_version = ">= 1.1.0"
}

resource "random_string" "random" {
  length = var.string_length
}

resource "random_pet" "nickname" {
  length = var.string_length
}

variable "string_length" {
  type        = number
  description = "The character length of the string."
  default     = 10
}
