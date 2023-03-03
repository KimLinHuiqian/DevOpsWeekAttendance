terraform {
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 4.0"
        }
        azurerm={
            source="hashicorp/azurerm"
            version=">=3.45.0"
        }
    }

}

provider "aws"{
    region = "us-east-1"
}

provider "azurerm" {
    feature{}  
}
resource "azurerm_resource_group"{
    name="exercises1"
    location="East US"
    tags={
        source = "terraform"
    }
}
resource "aws_vpc" "example_vpc" {
  cidr_block = "10.0.0.0/16"
}
