# Week 19 Homework

## PART 1 - WIndows Server Attack

### Question 1
 - Several users were impacted during the attack on March 25th
   - According to the logs, user_a was effected by several account lockouts
   - user_k had several password reset attempts.
 - Based on the attack signatures, what mitigations would you recommend to protect each user account? Provide global mitigations that the whole company can use and individual mitigations that are specfic to each user.
   - All user passwords should be immediately reset. 
   - Require users to change passwords every 30-90 days (if using Windows, enforce in Group Policy)
   - To limit forced account lockouts, can require all users to use Multi-factor Authentication to access account.
   - To limit password reset attempts, lockout accounts after 3 failed log-in attempts.

### Question 2
 - VSI has insider information that JobeCorp attempted to target users by sending 'Bad Logins' to lockout every user.
 - What sort of mitigation can you use to mitigate this.
   - The most effective mitigation would be to implement Multi-Factor Authentication for all users.
   - Using dedicated VPNs to prevent unauthorized traffic from entering the network.
   - Set SOC alerts to trigger if a user account is seen to have an unusual amount of login attempts.

## PART 2 - Apache Webserver Attack:

### Question 1
 - Based on the geographic map, recommend a firewall rule that the networking team should implement.
   - The networking team should add a firewall rule to block traffic from Ukraine.
 - Provide a 'plain english' description of the rule
   - Block all incoming HTTP traffic where the source IP originates from the city of Kiev, Ukraine or Kharkiv, Ukraine.
 - Provide a screen shot of the geographic map that justifies why you created this rule.

### Question 2
 - VSI has insider information that JobeCorp will launch the same webserver attack but use a different IP each time in order to avoid being stopped by the rule you just created.
 - What other rules can you create to protect VSI from attacks against your webserver?
   - Block all incoming HTTP traffic containing the URI containing string 'VSI_Account_logon.php'
   - Block all incomoing HTTP traffic from useragent Mozilla/4.0 (compatible; MSIE 6.0; Windows NT 5.2; SV1; .NET CLR 2.0.50727987787; InfoPath.1)