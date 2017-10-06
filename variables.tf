variable "name" {
  default = ""
  description = "The name for instance name tag"
}

variable "ec2InstanceCount" {
  default = 1
  description = "Amount of instances to be created"
}

variable "ec2InstanceType" {
  default = "t2.micro"
  description = "The EC2 instance type to use while creating. Change it to which you need to create"
}

variable "ec2EBSOptimised" {
  default = "true"
  description = "The type of EBS for instance"
}

variable "ec2AmiId" {
  type = "map"
  default = {
    "us-east-1" = "ami-a4c7edb2"
    "us-east-2" = "ami-8a7859ef"
    "us-west-1" = "ami-6df1e514"
    "us-west-2" = "ami-327f5352"
    "ca-central-1" = "ami-a7aa15c3"
  }
}

variable "awsAvailabilityZone" {
  default = "a"
  description = "The AWS availabiliti zone to lunch instance in"
}

variable "awsSubnetID" {
  description = "The AWS Subnet id To lunch instance in"
}

variable "awsKeyName" {
  default = "onesource"
  description = "The default instance key name user for connection to instances"
}

variable "awsVpcSecurityGroupsIds" {
  type = list
  default = []
  description = "The AWS SG for attaching to the instance"
}

variable "awsRootBlockDeviceSize" {
  default = "30"
  description = "The default root block device size"
}

variable "awsRootBlockDeviceType" {
  default = "gp2"
  description = "The default root block device type"
}


variable "awsInstanceTags" {
  type = "map"
  default = {}
  description = "The AWS tags to use for tagging the instance and other resources"
}