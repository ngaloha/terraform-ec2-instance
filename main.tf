resource "aws_instance" "main" {
  ami = "${lookup(var.ec2AmiId, var.awsRegion)}"
  instance_type = "${var.ec2InstanceType}"
  ebs_optimized = "${var.ec2EBSOptimised}"
  key_name = "${var.awsKeyName}"
  availability_zone = "${var.awsRegion + var.awsAvailabilityZone}"
  subnet_id = "${var.awsSubnetID}"
  vpc_security_group_ids = "${var.awsVpcSecurityGroupsIds}"

  root_block_device {
    volume_type = "${var.awsRootBlockDeviceType}"
    volume_size = "${var.awsRootBlockDeviceSize}"
  }

  tags = "${merge(var.awsInstanceTags, map("Name", var.name))}"
  volume_tags = "${merge(var.awsInstanceTags, map("Name", var.name))}"
}