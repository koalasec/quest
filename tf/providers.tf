terraform {
  required_providers {
    ibm = {
      source  = "IBM-Cloud/ibm"
      version = ">= 1.60.0"
    }
  }
}

# looks for IC_API_KEY env variable. 
# unlike aws there is just the api key not a pair of key id + access key
provider "ibm" {
  region           = var.region
}