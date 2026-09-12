# Set_Static_DNS_Permanent-Debian

## Change Configuration

```bash
sudo nmcli connection modify "NMD" \
  ipv4.ignore-auto-dns yes \
  ipv4.dns "192.168.250.1 192.168.252.51" \
  ipv4.dns-search "home"
```

## Apply Modifications

```bash
sudo nmcli connection modify "NMD" \
  ipv6.ignore-auto-dns yes
```

## Reset Connection

```bash
sudo nmcli connection down "NMD"
sudo nmcli connection up "NMD"
```

## Check

```bash
nmcli device show wlo1 | grep -E 'DNS|DOMAIN'
```

## Must Be

```bash
IP4.DNS[1]:    192.168.250.1
IP4.DNS[2]:    192.168.252.51
IP4.DOMAIN[1]: home
```

## Check

```bash
nmcli connection show "NMD" | grep -E 'ipv4.dns:|ipv4.dns-search|ipv4.ignore-auto-dns|ipv6.ignore-auto-dns'
```

## Must Be

```bash
ipv4.dns:                   192.168.250.1,192.168.252.51
ipv4.dns-search:            home
ipv4.ignore-auto-dns:       yes
ipv6.ignore-auto-dns:       yes
```

## Check

```bash
sudo grep -E 'dns=|ignore-auto-dns|dns-search' \
  /etc/NetworkManager/system-connections/NMD.nmconnection
```


## Must Be

```bash
[ipv4]
dns=192.168.250.1;192.168.252.51;
dns-search=home;
ignore-auto-dns=true
method=auto
```
