# AWS account config
region = "eu-north-1"

# General for all infrastructure
# This is the name prefix for all infra components
name = "danit"


vpc_id      = "vpc-02793c9f8a322e1e7"
subnets_ids = ["subnet-035074134f64f66d3", "subnet-06a3ad39c7fe7025b", "subnet-0b5cb96b08917e60a"]


tags = {
  Environment = "test"
  TfControl   = "true"
}


domain_name = "brigajani.website"
