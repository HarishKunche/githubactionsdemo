provider "aws" {
  

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


