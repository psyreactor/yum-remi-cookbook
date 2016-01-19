@test "install a package" {
      sudo yum install -y php
}

@test "verify expected version" {
      php --version | grep "^PHP 5.4" || cat /etc/redhat-release | grep ^Fedora
}
