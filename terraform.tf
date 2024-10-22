terraform {

  backend "s3" {
    bucket = "terraform-zomato-project"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}
