function myip -d "Get your public IP address"
  dig @resolver1.opendns.com myip.opendns.com +short
end
