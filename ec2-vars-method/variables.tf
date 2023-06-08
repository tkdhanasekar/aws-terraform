variable "access_key" {
        description = "Access key to AWS console"
}
variable "secret_key" {
        description = "Secret key to AWS console"
}


variable "instance_name" {
        description = "Name of the instance to be created"
        default = "awsbuilder-demo"
}

variable "instance_type" {
        default = "t2.micro"
}

variable "subnet_id" {
        description = "The VPC subnet the instance(s) will be created in"
        default = "subnet-0ccba3b8cfd0645e2"
}

variable "ami_id" {
        description = "The AMI to use"
        default = "ami-0f5ee92e2d63afc18"
}

variable "ami_key_pair_name" {
        default = "mykey"
}

variable "name" {
	default = "dbserver"
}

variable "public_ip" {
	default = "true"
}

