resource "aws_instance" "my_instance" {
    ami = var.my-image
    instance_type = var.my-size
    key_name = "xyzkey"
    count = var.num-of-instance
    tags = {
      "Name" = "my_terra${count.index + 1} "
    }
    vpc_security_group_ids = [ "sg-0388703cebfda412c" ]


    connection {
      type = "ssh"
      user = "ec2-user"
      host = self.public_ip 
      private_key = file("/home/akash/Downloads/xyzkey.pem")
    }
    provisioner "file" {
    source = "apache_run.sh"
    destination = "/home/ec2-user/apache_run.sh"
}

    provisioner "remote-exec" {
    script = "apache_run.sh"

}

}
