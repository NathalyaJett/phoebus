resource "aws_key_pair" "nathalya" {
  key_name   = "nathalya-key"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDi/vKoo7r2RBqeSWKU8H/wt+Kw5D1q0EV9N9/14JyDkvdNEZEZREyobYN+JWfIBHokkxXhVHlM8oPUOpg+q/Quw2OiJpHHDDnzepy4HAj08B3mxd6lU0fJouN+WKiMVzxChYb0T9rEYCyOjoDbrR+PMehMh2Dr6Ff7BdbAtnSgiXvH7ELCellp+fZFune2C5BhXOYXSbWUDT765uxd65hshyK+lusXaVeSH7eRShXeVgnJh8qqd3gDE6m1wnNBYAxT9FCY6HAwqqAXQGnXn98QKLJQI1+4AhZzc8LCu9coIXaSefoldAInsJCW2gU//6YpwBGm9+JscYOYq4zDNo8Lt7jXuqnTbR9f816E7UW3nBHtSK0NKyDeE424Jo9qL9xZz4KexgWT5IZsVf5AXp44n8pPo77ZuY8lQ8hKTA5b0/7mzop++8VbQXl39c9JJIxaO/P6d1PqGzIRo7kCIhh/0bQXaI6HiNLJFnr/dPaQbopCRsZfS5hGYGk32s2m/9M= ubuntu"
}


resource "aws_instance" "nathalya" { 
  ami                    = "ami-09e67e426f25ce0d7"
  instance_type          = "t2.micro"
  key_name               = "nathalya-key"
  vpc_security_group_ids = ["sg-094e415086e9c28cc"]

  tags = {
    Name = "desafio_phoebus"
  }
}

