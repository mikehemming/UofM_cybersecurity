# Week 15 Homework

## Web Application 1: _Your Wish is My Command Injection_

![pwd](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Week_15_Homework/Screenshots/Homework_week_15_pwd.png)

![etc/hosts](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Week_15_Homework/Screenshots/Homework_week_15_Command_Injection_hosts.png) 

![etc/passwd](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Week_15_Homework/Screenshots/Homework_week_15_Command_Injection_passwd.png)

#### Mitigation Options
1) Limit allowable characters in the search fields to '.' and numbers since the tool is only used for pinging specific IPv4 addresses.
2) Rather than allowing user input to directly run system commands, direct input through a library of functions so you can control which commands can be run


## Web Application 2: _A Brute Force to Be Reckoned With_

![BurpSuite - I am Iron Man](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Week_15_Homework/Screenshots/Homework_week_15_BurpSuite_tonystark.png) 

#### Mitigation Options
1) Perform a password audit and require all passwords to be changed and all new passwords to meet a complexity standard.
2) Require passwords to be periodically changed on a set schedule, i.e. every 30-90 days.

## Web Application 3: _Where's the BeEF?_

![Fake Notification Bar](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Week_15_Homework/Screenshots/Homework_week_15_BeEF_Fake_Notification_bar.png)

![Geo Location](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Week_15_Homework/Screenshots/Homework_week_15_BeEF_Geo_Location.png)

![Pretty Theft](https://github.com/mikehemming/UofM_cybersecurity/blob/main/Week_15_Homework/Screenshots/Homework_week_15_BeEF_Pretty_Theft.png)

#### Mitigation Options
1) Perform user training to identify phishing emails and to check URLs for suspicious addresses specially if sites are asking for credentials.
2) Make sure browsers are up to date to eliminate XSS and make sure anti-virus or EDR software is up to date and running.