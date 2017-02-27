ip1="169.254.206"
for i in {1..255}
do
    ping -c1 -W1 $ip1.$i  > /dev/null 
    [ $? -eq 0 ] && echo "$ip1.$i is alive"  || echo "$ip1.$i is not alive"
done
