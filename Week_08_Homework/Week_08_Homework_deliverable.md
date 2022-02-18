# **Homework For Week 8**

## **Phase 1**

 * Determined the IP adresses to scan were `15.199.95.91` & `15.199.94.91` & `11.199.158.91` & `167.172.144.11` & `11.199.141.91`, then ran fping against these IPs.
 * Used the following command to run `fping`
    * 
    ```
    fping 15.199.95.91 15.199.94.91 11.199.158.91 167.172.144.11 11.199.141.91
    ```
 * Determined a potential vulnerability that IP `167.172.144.11` is responding.
    * Because RockStar Corp doesn't want to respond to any requests, this is a vulnerability.
 * Recommend to restrict allowing ICMP echo requests to IP `167.172.144.11` to prevent successful responses from PING requests.
 * This occurred on the network layer as PING uses IP addresses and IPs are used on the Network Layer.

## **Phase 2**

 * Determined the IP address to be scanned was the responding server at the Hollywood office `167.172.144.11`. Ran nmap against this IP address to determine open ports.
 * Used the following command to run `nmap`
    * 
    ``` 
    sudo nmap -sS 167.172.144.11
    ```
 * Determined a pontenial vulnerability that `port 22` was open.
    * This port can be used to SSH into the server and take control remotely
 * Recommend closing `port 22` to prevent unauthorized access to the server.
 * Recommend removing this record from the `/etc/hosts` file to stop DNS spoofing.
 * This occurred on the transport layer as we were scanning ports using a TCP handshake. TCP and UDP are used on the Transport Layer.

 ## **Phase 3**

 * Gain access to the open server `167.172.144.11` through the open `SSH Port 22`. Run an SSH command to remote into the server.
 * Used the following command to run `ssh`
    * 
    ```
    ssh jimi@167.172.144.11
    ```
    * log in with password `hendrix`
 * Employees report that when trying to reach `rollingstone.com` they are redirected to another website. Check the local DNS cache in the `/etc/hosts` file to determine if a record has been added redirecting traffic.
 * Once remotely logged into server, navigate to the hosts file
    * 
    ```
    cd /etc
    ls | grep hosts
    nano hosts
    ```
 * Within the `/etc/hosts` file there was a record redirecting traffic for `rollingstone.com` to another IP address confirming a DNS hijacking.
    * `98.137.246.8 rollingstone.com`
 * Use nslookup command to determine the domain name for the IP `98.137.246.8` found in the DNS Cache.
    * 
    ```
    nslookup 98.137.246.8
    ```
    * results `name = unknown.yahoo.com.`
 * Findings were found on the application layer. SSH, DNS, and HTTP use the Application Layer.

 ## **Phase 4**

 * Hacker left a file in the /etc directory on the rockstar server with information about packet captures.
    * `/etc/packetcapturesinfo.txt`
    * Captured Packets are here:
 `https://drive.google.com/file/d/1ic-CFFGrbruloYrWaw3PvT71elTkh3eF/view?usp=sha$`
 * Opened the packet captures in `WireShark` and examined the arp protocol for responses using the following filter:
    * `arp.opcode == 2`
 * Located a packet that found and IP address with two MAC addresses associated to it indicating `ARP spoofing` has taken place.
    * `[Duplicate IP address detected for 192.168.47.200 (00:0c:29:1d:b3:b1) - also in use by 00:0c:29:0f:71:a3 (frame 4)]`
    * the IP `192.168.47.200` is associated to nodes with MACs `00:0c:29:1d:b3:b1` and `00:0c:29:0f:71:a1`
 * Checked the HTTP protocol packets to check for suspicious activity. Used the following filter to determine visited sites:
    * `http.request.method == "GET"`
    * hacker visited a site `www.gottheblues.yolasite.com`
 * Used following filter to determine if information was sent to a this website:
    * `http.request.method == "POST"
    * the hacker is an employee with Rockstar and offered `Got the Blues` a username and password along with information regarding the open ssh port on the Rockstar server in exhange for 1 million USD.
 * Highly recommend that `port 22` is closed immediately. Determine which devices were associated with the duplicate IP found during the `arp` scan and determine the users associated to narrow down the possible hacker.
 * These findings were found at the application layer. HTTP and ARP live on the Application Layer.





