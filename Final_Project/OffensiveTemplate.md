# Red Team: Summary of Operations

## Table of Contents
- Exposed Services
- Critical Vulnerabilities
- Exploitation

### Exposed Services
_TODO: Fill out the information below._

Nmap scan results for each machine reveal the below services and OS details:

```bash
$ nmap -sV 192.168.1.0/16
```
![nmap results](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Final_Project/Screenshots/nmap%20-sV%20results.png)



This scan identifies the services below as potential points of entry:
- Target 1
  - ssh - port 22 open, allows for anyone to attempt to create a secure shell into the target
  - rpcbind - port 111 open, having this exposed allows anyone to query and find out what is running on the machine
  - apahce - port 80 open, because this is a wordpress server, the server could be accessed from anyone


The following vulnerabilities were identified on each target:
- Target 1
  - MitM attack in OpenSSH, CVE-2020-14145, severity (Medium)
  - Permissions, Privileges, and Access Controls in OpenSSH, CVE-2015-5600, severity(High)
  - Possible request smuggling in Apache 2.4, CVE-2022-26377, severity (Medium)
  - Remote Code Execution in Samba 3.5.0, severity (High)
  - Authenticated Password Protected Pages Exposed in WordPress 4.8.7, CVE-2021-29450, severity (High)

  ![WPscan vulnerability results](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Final_Project/Screenshots/wordpress%20scan%202_2.png)



### Exploitation
_TODO: Fill out the details below. Include screenshots where possible._

The Red Team was able to penetrate `Target 1` and retrieve the following confidential data:
- Target 1
  - `flag1.txt`: b9bbcb33e11b80be759c4e844862482d
  ![flag1](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Final_Project/Screenshots/flag1_grep_search.png)
    - **Exploit Used**
      - Wordpress Password Protected Pages Exposed vulnerability
      - ``` wpscan --url 192.168.1.110/wordpress eu ```
      - Found list of users, attempted login with user 'michael'
      - The password was guessed and matched the username.
      - Located ```flag2.txt``` in the /var/www directory
      - ran ```grep -RE flag var
  - `flag2.txt`: fc3fd58dcdad9ab23faca6e9a36e581c
  ![flag2](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Final_Project/Screenshots/flag2.txt.png)
    - **Exploit Used**
      - see above for access to the system
      - used grep -RE flag var and located both flag1 and flag2
      ![flags1and2](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Final_Project/Screenshots/flag1_grep_search.png)

