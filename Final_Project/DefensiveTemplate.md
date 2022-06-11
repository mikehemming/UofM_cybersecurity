# Blue Team: Summary of Operations
## Table of Contents
- Network Topology
- Description of Targets
- Monitoring the Targets
- Patterns of Traffic & Behavior
- Suggestions for Going Further

### Network Topology
_TODO: Fill out the information below._

The following machines were identified on the network:
- Azure VM - running Hyper-V
  - **Operating System**: Windows
  - **Purpose**: create the Virtual environment for the engagement
  - **IP Address**: 192.168.1.1
- ELK Server
  - **Operating System**: Linux Ubuntu
  - **Purpose**: Log Ingestion
  - **IP Address**: 192.168.0.100
- Capstone
  - **Operating System**: Linux Ubuntu
  - **Purpose**: Testing the Alerts
  - **IP Address**: 192.168.0.105
- Target 1
  - **Operating System**: Linux
  - **Purpose**: Primary target of the engagement
  - **IP Address**: 192.168.0.110
- Target 2
  - **Operating System**: Linux
  - **Purpose**: Secondary target of the engagement
  - **IP Address**: 192.168.0.115
- Kali
  - **Operating System**: Kali Linux
  - **Purpose**: Attacker (contains pentest tools)
  - **IP Address**: 192.168.0.90

### Description of Targets
_TODO: Answer the questions below._

The target of this attack was: `Target 1` (192.168.0.110).

Target 1 is an Apache web server and has SSH enabled, so ports 80 and 22 are possible ports of entry for attackers. As such, the following alerts have been implemented:

### Monitoring the Targets

Traffic to these services should be carefully monitored. To this end, we have implemented the alerts below:

#### Excessive HTTP Errors

Excessive HTTP Errors is implemented as follows:
  - **Metric**: http response status code
  - **Threshold**: 400 in the last 5 minutes
  - **Vulnerability Mitigated**: SQL injection, Cross-Site Scripting, brute-force
  - **Reliability**: Low reliablility, generates a lot of false positives

#### HTTP Request Size Monitor
HTTP request size monitor is implemented as follows:
  - **Metric**: HTTP request size in bites
  - **Threshold**: More than 3500 bits are requested in a 1 minute timeframe
  - **Vulnerability Mitigated**: DDOS attacks
  - **Reliability**: Medium/high reliability. Will detect high consistent traffic, may generate false positive if user has trouble inputting credentials. lockout policies can mitigate this.

#### CPU Usage Monitor
Alert 3 is implemented as follows:
  - **Metric**: Percentage of CPU usage
  - **Threshold**: usage above 50% for 5 minues
  - **Vulnerability Mitigated**: Malware detection/trojans 
  - **Reliability**: Medium reliability. Could generate false positives if the computer has high CPU utilization for legitimate reasons



### Suggestions for Going Further (Optional)
_
The logs and alerts generated during the assessment suggest that this network is susceptible to several active threats, identified by the alerts above. In addition to watching for occurrences of such threats, the network should be hardened against them. The Blue Team suggests that IT implement the fixes below to protect the network:
- SSH brute-force attack
  - **Patch**: install `SSHGaurd` with `sudo apt-get install sshguard`
  - **Why It Works**: `SSHGuard` monitors users attempting to access server via SSH. If it detects several unsuccessful login attempts, the IP will be blocked using `iptables`
- DDOS Attacks
  - **Patch**: install `iptables` with `sudo apt-get install iptables`
  - **Why It Works**: `iptables` is a command line firewall that can be set up with several rules. It can detect unusually high traffic indicative of a DDOS attack and add to the programs blocklist. Other firewall options avaialbe for added protection against brute-force and other attacks.
- Malware detection/trojan
  - **Patch**: install `clamav` with `sudo apt-get install`
  - **Why It Works**: `clamav` is a virus scan tool for detecting viruses, malware, and trojans with a continuously updated database
