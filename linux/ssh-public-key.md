## Enable SSH connection without password

1. On the server as administrator run;

    Give permission to user home folder (This step might not be necessary)

    `chmod 755 /volume<volume_number>/homes/<username>`

2. Give access to SSH files;

    `chmod 644 .ssh/authorized_keys`

    `admin@syno.lan$ chmod 700 .ssh`

    `admin@syno.lan$ chmod 755 /var/services/homes/admin`

    `admin@syno.lan$ exit`

3. Backup SSH config

    `sudo cp /etc/ssh/sshd_config /etc/ssh/sshd_config.bak --verbose`

4. Edit configuration

    `sudo vi /etc/ssh/sshd_config`

    ```
    PubkeyAuthentication yes
    AuthorizedKeysFile .ssh/authorized_keys
    ChallengeResponseAuthentication no
    ``` 

5. On your local computer Generate SSH key

    `ssh -keygen -t RSA -C “username@serverIp”`

    using the server IP in the email helps keeping track of the generated keys and it's usages.

6. Copy the public key to the server

    `ssh-copy-id username@serverIp`

7. Restart SSH server

    `sudo synoservicectl --restart sshd`

    or

    Restart it thought the interface by;
    * Sign in to the web interface of the remote Synology.
    * Navigate to Control panel
    * Terminal & SNMP
    * Uncheck SSH, apply
    * Check SSH and apply