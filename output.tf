output "awsInstanceID" {
  value = "${aws_instance.main.id}"
}

output "awsInstancePrivateIP" {
  value = "${aws_instance.main.private_ip}"
}

output "awsInstancePrivateDNS" {
  value = "${aws_instance.main.private_dns}"
}

output "awsInstancePublicIP" {
  value = "${aws_instance.main.public_ip}"
}

output "awsInstancePublicDNS" {
  value = "${aws_instance.main.public_dns}"
}
output "awsKeyName" {
  value = "${aws_instance.main.key_name}"
}