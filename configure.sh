#!/bin/sh
# V2Ray new configuration
# Run V2ray
# Write V2Ray configuration
UUID=afcace7safadf7-7b0af5-4af7b6-8b3afa-e8fafaf62322e5  # 221009 ,yi xiugai
# PATHM=lastbh
cat << EOF > /etc/v2ray/config.json
{
    "inbounds": [{
        "port": 8080,
        "protocol": "vmess",
        "settings": {
            "clients": [{
                "id": "$UUID",
                "alterId": 0
            }]
        },
        "streamSettings": {
            "network": "ws",
            "wsSettings": {
                "path": "/$UUID-vmess"
            }
        }
    }],
    "outbounds": [{
        "protocol": "freedom"
    }]
}
EOF

#Run V2ray

/usr/bin/v2ray/v2ray  run -config=/etc/v2ray/config.json
