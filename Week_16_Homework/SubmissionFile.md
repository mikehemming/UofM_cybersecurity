## Week 16 Homework Submission File: Penetration Testing 1

#### Step 1: Google Dorking


- Using Google, can you identify who the Chief Executive Officer of Altoro Mutual is: 
  - Karl Fitzgerald

- How can this information be helpful to an attacker: 
  - The info can be used to gather emails and other contact information of the executives. This info can be used to craft sophisticated Spear Phishing attacks.


#### Step 2: DNS and Domain Discovery

Enter the IP address for `demo.testfire.net` into Domain Dossier and answer the following questions based on the results:

  1. Where is the company located: 
     - Redondo Beach, CA 90278

  2. What is the NetRange IP address:
     - 65.61.137.64 - 65.61.137.127

  3. What is the company they use to store their infrastructure:
     - Rackspace Backbone Engineering

  4. What is the IP address of the DNS server:
     - 65.61.137.117

#### Step 3: Shodan

- What open ports and running services did Shodan find:
     - Ports 80, 443, 8080
     - Apache Tomcat/Coyote JSP Engine

#### Step 4: Recon-ng

- Install the Recon module `xssed`. 
- Set the source to `demo.testfire.net`. 
- Run the module. 

Is Altoro Mutual vulnerable to XSS: 
   - Yes 

   ![xssed scan results](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Week_16_Homework/Screencaps/xssed_scan_results.png) 
   
   ![Alture site XSS](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Week_16_Homework/Screencaps/Alturo_Mutual_XSS_demo.png)

   


### Step 5: Zenmap

Your client has asked that you help identify any vulnerabilities with their file-sharing server. Using the Metasploitable machine to act as your client's server, complete the following:

- Command for Zenmap to run a service scan against the Metasploitable machine: 
    - nmap -T4 -F 192.168.0.10
 
- Bonus command to output results into a new text file named `zenmapscan.txt`:
    - nmap -T4 -F -oN zenmapscan.txt 192.168.0.10

- Zenmap vulnerability script command:
    - nmap -T4 -A -v --script smb-enum-shares

- Once you have identified this vulnerability, answer the following questions for your client:
  1. What is the vulnerability:
   - Samba 3.0.20-Debian (Samba'Username map script' Command Execution)

  2. Why is it dangerous:
   - Attackers can cause remote command execution through using username script mapping, adjusting the username to contain additional characters and execute code.

  3. What mitigation strategies can you recommendations for the client to protect their server:
   - Update Samba to versions later than 3.0.25rc3.
   - Remove Samba protocols and use SSH for remote access. 
---
© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.  

