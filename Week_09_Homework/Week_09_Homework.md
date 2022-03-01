# WEEK 9

## MISSION 1

    starwars.com    MX preference = 5, mail exchanger = alt1.aspx.l.google.com  
    starwars.com    MX preference = 5, mail exchanger = alt2.aspmx.l.google.com
    starwars.com    MX preference = 10, mail exchanger = aspmx2.googlemail.com
    starwars.com    MX preference = 1, mail exchanger = aspmx.l.google.com
    starwars.com    MX preference = 10, mail exchanger = aspmx3.googlemail.com

- The MX record is not pointed at the correct mail server. The correct record should look like the following:

    starwars.com    MX preference = 1, mail exchanger = asltx.l.google.com
    starwars.com    MX preference = 5, mail exchanger = asltx.2.google.com

## MISSION 2

-   v=spf1 a mx mx:smtp.secureserver.net include:aspmx.googlemail.com ip4:104.156.250.80 ip4:45.63.15.159 ip4:45.63.4.215"
-   IP 45.23.176.21 is not authorized to send email from theforce.net so upon receipt the emails are failing the spf check and are being passed to the spam folder
-   v=spf1 a mx mx:smtp.secureserver.net include:aspmx.googlemail.com ip4:104.156.250.80 ip4:45.63.15.159 ip4:45.63.4.215 ip4:45.23.176.21"

## MISSION 3

-   www.theforce.net        canonical name = theforce.net
-   resistance.theforece.net is not included in the cname record for theforce.net so traffic will not be redirected correctly.
-   resistance.theforce.net canonical name = theforce.net

## MISSION 4

- princessleia.site  
primary name server = ns25.domaincontrol.com  
responsible mail addr = dns.jomax.net  
serial  = 2021081601  
refresh = 28800 (8 hours)  
retry   = 7200 (2 hours)  
expire  = 604800 (7 days)  
default TTL = 600 (10 mins)  
princessleia.site       nameserver = ns25.domaincontrol.com  
princessleia.site       nameserver = ns26.domaincontrol.com

-   princessleia.site nameserver = ns25.domaincontrol.com  
princessleia.site nameserver = ns26.domaincontrol.com  
princessleia.site nameserver = ns2.galaxybackup.com

## MISSION 5

-   BATUU > D > C > E > F > J > I > L > Q > T > V > JEDHA

## MISSION 6

-   IntelCor_55:98:ef - 00:13:ce:55:98:ef (172.16.0.101)
-   Cisco-LI_e3:e4:01 - 00:0f:66:e3:e4:01 (172.16.0.1)

## MISSION 7

![Mission_7_result_1]

