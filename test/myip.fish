test "myip returns public IP address"
  myip | grep -Eq '^\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}$'
end
