terraform {
    required_version = "~> 1.0.3" // added latest version
    required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.7.0"
     }
    }
   }

provider "aws" {
        region = "us-east-1" 
        #profile = "default"
	}

resource "aws_instance" "tony" {
	ami = "ami-0022f774911c1d690" 
	instance_type = "t2.micro"
}
