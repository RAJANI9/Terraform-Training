resource "aws_instance" "myEC2" {
    ami = "ami-074dc0a6f6c764218"
    instance_type = "t3.micro"
    user_data = file ("${path.module}/App-install.sh")
    tages = {
        "Name" = "MYEC2-Demo"
    
    }
}