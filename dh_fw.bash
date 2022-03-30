$> /etc/init.d/dhcp start
$> modprobe ipt_MASQUERADE 
$> iptables -F; iptables -t nat -F; iptables -t mangle -F
$> iptables -t nat -A POSTROUTING -o eth0 -j SNAT --to # insert ip
$> echo 1 > /proc/sys/net/ipv4/ip_forward