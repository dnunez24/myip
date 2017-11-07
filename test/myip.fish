test "$TESTNAME returns a valid IP address"
  0 -eq (
    # https://regex101.com/r/U51PYw/1
    myip | grep -Eq '^(?:[0-9]|[1-9][0-9]|1[0-9]{2}|2[0-4][0-9]|25[0-5])(?:\.[0-9]|\.[1-9][0-9]|\.1[0-9]{2}|\.2[0-4][0-9]|\.25[0-5]){3}$'
    echo $status
  )
end

test "$TESTNAME does not return an IP address in the range 127.0.0.0 - 127.255.255.255"
  1 -eq (
    # https://regex101.com/r/dUcdP9/3
    myip | grep -Eq '^127(?:\.[0-9]|\.[1-9][0-9]|\.1[0-9]{2}|\.2[0-4][0-9]|\.25[0-5]){3}$'
    echo $status
  )
end

test "$TESTNAME does not return an IP address in the range 172.16.0.0 - 172.31.255.255"
  1 -eq (
    # https://regex101.com/r/dUcdP9/2
    myip | grep -Eq '^172\.(?:1[6-9]|2[0-9]|3[01])(?:\.[0-9]|\.[1-9][0-9]|\.1[0-9]{2}|\.2[0-4][0-9]|\.25[0-5]){2}$'
    echo $status
  )
end

test "$TESTNAME does not return an IP address in the range 192.168.0.0 - 192.168.255.255"
  1 -eq (
    # https://regex101.com/r/qONKHZ/1
    myip | grep -Eq '^192\.168(?:\.[0-9]|\.[1-9][0-9]|\.1[0-9]{2}|\.2[0-4][0-9]|\.25[0-5]){2}$'
    echo $status
  )
end

test "$TESTNAME does not return an IP address in the range 10.0.0.0 - 10.255.255.255"
  1 -eq (
    # https://regex101.com/r/RYl1B9/1
    myip | grep -Eq '^10(?:\.[0-9]|\.[1-9][0-9]|\.1[0-9]{2}|\.2[0-4][0-9]|\.25[0-5]){3}$'
    echo $status
  )
end
