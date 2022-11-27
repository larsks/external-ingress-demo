#!/bin/bash

device=$1
action=$2

if [[ $device = eth1 ]]; then
        if [[ $action = up ]]; then
            nft -f /etc/nftables/external-ingress.nft
            ip rule add priority 200 fwmark 0x2000/0x2000 lookup 200
            ip rule add priority 210 from 100.64.0.0/24 table main suppress_prefixlen 0
            ip rule add priority 220 from 100.64.0.0/24 table 200
            ip route add default via 100.64.0.1 table 200 dev eth1
        elif [[ $action = down ]]; then
            ip rule del priority 200
            ip rule del priority 210
            ip rule del priority 220
            nft delete table external-ingress
        fi
fi
