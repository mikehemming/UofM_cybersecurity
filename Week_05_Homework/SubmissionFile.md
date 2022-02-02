## Week 5 Homework Submission File: Archiving and Logging Data

Please edit this file by adding the solution commands on the line below the prompt.

Save and submit the completed file for your homework submission.

---

### Step 1: Create, Extract, Compress, and Manage tar Backup Archives

1. Command to **extract** the `TarDocs.tar` archive to the current directory: 
    ```
    tar xvvf TarDocs.tar -c .
    ```

2. Command to **create** the `Javaless_Doc.tar` archive from the `TarDocs/` directory, while excluding the `TarDocs/Documents/Java` directory: 
    ```
    tar cvv --exclude='Documents/Java' -f Javaless_Docs.tar ~/Projects/TarDocs/ 
    ```

3. Command to ensure `Java/` is not in the new `Javaless_Docs.tar` archive: 
    ```
    tar tf Javaless_Docs.tar | grep Java
    ```

**Bonus** 
- Command to create an incremental archive called `logs_backup_tar.gz` with only changed files to `snapshot.file` for the `/var/log` directory: 
    ```
    sudo tar czvf logs_back_up.tar.cz --listed-incremental=snapshot.file /var/log
    ```

#### Critical Analysis Question

- Why wouldn't you use the options `-x` and `-c` at the same time with `tar`?

    - **the -c option is used to create the .tar file while the -x option is used to extract the contents of the .tar file. You cannot simultaneously create and extract a .tar file.**

---

### Step 2: Create, Manage, and Automate Cron Jobs

1. Cron job for backing up the `/var/log/auth.log` file: 
    ```
    0 6 * * 3 sudo tar czf /auth_backup.tgz /var/log/auth.log
    ```

---

### Step 3: Write Basic Bash Scripts

1. Brace expansion command to create the four subdirectories: 
```
mkdir -p ~/backups/{freemem,diskuse,openlist,freedisk}
```

2. Paste your `system.sh` script edits below:

    ```bash
    #!/bin/bash
    # Outputs current system free memory to free_mem.txt
    free -h > ~/backups/freemem/free_mem.txt

    # Outputs current disk usage to disk_usage.txt
    du -h > ~/backups/diskuse/disk_use.txt

    # Outputs all open files to open_list.txt
    lsof -e /run/user/1000/gvfs > ~/backups/openlist/open_list.txt

    # Outputs File system disk space usage to free_disk.txt
    df -h > ~/backups/freedisk/free_disk.txt
    ```

3. Command to make the `system.sh` script executable:
    ```
    chmod 755 system.sh
    ```

**Optional**
- Commands to test the script and confirm its execution:
    ```
    sudo ./system.sh
    cat ~/backups/freemem/free_mem.txt
    cat ~/backups/diskuse/disk_use/txt
    cat ~/backups/openlist/open_list/txt
    cat ~/backups/freedisk/free_disks.txt
    ```

**Bonus**
- Command to copy `system` to system-wide cron directory: ```
    ```
    sudo cp ~/system.sh /etc/cron.weekly
    ```

---

### Step 4. Manage Log File Sizes
 
1. Run `sudo nano /etc/logrotate.conf` to edit the `logrotate` configuration file. 

    Configure a log rotation scheme that backs up authentication messages to the `/var/log/auth.log`.

    - Add your config file edits below:

    ```bash
    /var/log/auth.log {
        weekly
        rotate 7
        notifempty
        compress
        delaycompress
        missingok
        endscript
    }
    ```
---

### Bonus: Check for Policy and File Violations

1. Command to verify `auditd` is active: 
    ```
    systemctl status auditd
    ```

2. Command to set number of retained logs and maximum log file size: 

    - Add the edits made to the configuration file below:

    ```bash
    max_log_file = 35
    num_logs = 7 
    ```

3. Command using `auditd` to set rules for `/etc/shadow`, `/etc/passwd` and `/var/log/auth.log`:


    - Add the edits made to the `rules` file below:

    ```bash
    -w /etc/shadow -p wra -k hashpass_audit
    -w /etc/passwd -p wra -k userpass_audit
    -w /var/log/auth.log -p wra -k authlog_audit 
    ```

4. Command to restart `auditd`: 
    ```
    sudo systemctl restart auditd
    ```

5. Command to list all `auditd` rules: 
    ```
    sudo auditctl -l
    ```

6. Command to produce an audit report: 
    ```
    sudo aureport -au
    ```

7. Create a user with `sudo useradd attacker` and produce an audit report that lists account modifications: 
    ```
    sudo aureport -m
    ```

8. Command to use `auditd` to watch `/var/log/cron`: 
    ```
    sudo auditctl -w /var/log/cron/
    ```

9. Command to verify `auditd` rules: 
    ```
    sudo auditctl -l
    ```
      - -w /var/log/cron -p rwxa (new added rule)

---

### Bonus (Research Activity): Perform Various Log Filtering Techniques

1. Command to return `journalctl` messages with priorities from emergency to error: 
    ```
    journalctl -p err -b
    ```

1. Command to check the disk usage of the system journal unit since the most recent boot: 
    ```
    journalctl --disk-usage -b | less
    ```

1. Comand to remove all archived journal files except the most recent two: 
    ```
    journalctl --vacuum-files=2
    ```


1. Command to filter all log messages with priority levels between zero and two, and save output to `/home/sysadmin/Priority_High.txt`: 
    ```
    journalctl -p 2 > /home/sysadmin/Priortity_High.txt
    ```

1. Command to automate the last command in a daily cronjob. Add the edits made to the crontab file below:

    ```bash
    [0 6 * * * sudo journalctl -p 2 > /home/sysadmin/Priortity_High.txt]
    ```

---
© 2020 Trilogy Education Services, a 2U, Inc. brand. All Rights Reserved.
