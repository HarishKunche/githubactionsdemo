provider "aws" {
  region     = "eu-north-1"
  access_key = "AKIAWZSR6DYB3UJVM3UF"
  secret_key = "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"
}
resource "aws_s3_bucket" "bucketsv1" {
for_each = {
  dev = "devs3buckethk"
  prod= "prods3buckethk"
}
bucket =  "${each.key}-${each.value}"

tags = {
  Env = each.key
  Name = each.value 
}
}

output "bucketnames"{
  value =  {
    for i,k in aws_s3_bucket.bucketsv1: i => k.bucket
  }
  
}


