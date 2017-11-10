# SIPp scenario 


* invite-auth-sdp-nomedia.xml

You will need to compile SIPp with OpenSSL support 'make ossl' to use this call scenario

Execute this script with SIPp using the following command assuming your UAS is 10.0.0.10
Replace 10.0.0.10 with your SIP proxy’s address. The command will generate 10 calls (-r) per 10000
milliseconds (-rp), max 100 concurrent calls (-l) and make a max of 100000 calls (-m)

> ./sipp 10.0.0.10 -sf invite-auth-sdp-nomedia.xml -inf user-accounts.csv -m 100000 -l 100 -r 10 -rp 10000
