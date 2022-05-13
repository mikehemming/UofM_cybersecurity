## Vandalay Industries DDOS Attack Report 2-23-2020

Incident - On February 23rd, 2022, a suspected DDOS attack was suspected against Vandalay Industries.  This report will answer a few questions about the event and present evidence to substantiate a DDOS attack occurred, also addressing some critical vulnerabilites on the customer data server, and finally a brute force attack against the network admin users. It will also discuss some mitigation strategies to prevent future attacks. 

### DDOS ATTACK

![DDOS attack](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Week_18_Homework/Screencaps/Vandalay%20DDOS%20attack%20report.png)

-  According to the data in the above Splunk report screenshot, the attack appears to have started at approximately 0830 on 2-23-2022, continued until 1230 on 2-23-2022.
-  The network appears to have taken a further 5 hours to recover, returning to normal activity by 1730 on 2-23-2022.

### CUSTOMER DATA SERVER CRITICAL VULNERABILITIES
-   A number of vulnerabilites were detected in the Nessus data. A report and alert in Splunk were created to anaylyze the vulnerabilites and alert the SOC if there are additional vulnerabilities detected.

![Critcal Vulnerability Report](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Week_18_Homework/Screencaps/Nessus_Logs_Critical_Vulnerabilities_report.png)

![Critical Vulnerability Alert](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Week_18_Homework/Screencaps/Critical_vulnerability_Alert.png)

-  A brute force attack was launched to break an admin account. The attack began at 0200 on Feb 21st, 2020.
