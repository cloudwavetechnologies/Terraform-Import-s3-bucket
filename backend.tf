terraform {
  backend "s3" {
    bucket = "statefile-bucket-002"
    key    = "Infra/statefile-supplychain-001.tfstate"  // ✅ Use static string
    region = "ap-south-1"
  }
}