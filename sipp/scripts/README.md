# SIPp scenario 


* invite-auth-sdp-nomedia.xml

You will need to compile SIPp with OpenSSL support 'make ossl' to use this call scenario

Execute this script with SIPp using the following command assuming your UAS is 10.0.0.10
Replace 10.0.0.10 with your SIP proxy’s address. The command will generate 10 calls (-r) per 10000
milliseconds (-rp), max 100 concurrent calls (-l) and make a max of 100000 calls (-m)

> sipp 10.0.0.10 -sf invite-auth-sdp-nomedia.xml -inf user-accounts.csv -m 100000 -l 100 -r 10 -rp 10000


+ INVITE.XML 
Command for 1000 calls

> sipp 1XX.1XX.2XX.2XX(Server IP) -t u1 -sf  Invite.xml -inf  Invite.csv -i 1XX.1XX.2XX.1XX (Local IP) -m 1000 -l 10 -r 10 -rp 10000 -trace_err -trace_msg -trace_logs


-m   = Max number of calls you want generate (100,1000...etc)

-l    = Max Concurrent calls you want to generate , If Max number of call is high it may take more time to generate 

-r   = Set the Call rate per second

-rp  =  rate period in milliseconds for call rate.

Example:-   -r 10  -rp 10000   =>   This means 10 calls for every 10 secs.
