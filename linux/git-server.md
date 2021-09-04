# Install GIT Server

Synology NAS is a good place to host a private git server. Here is how to install and configure it.

1. Create new user `gituser` (if you don't want to use your user) via Diskstation interface (with File Station and WebDAV privilages)
2. Add new shared folder called  `git`  (located at  `/volume<volume_number>/git`) with read/write access for  `gituser`  and  `admin`. This folder will hold all the repos.
3. Install Git Server package via Diskstation
4. Open Git Server and allow  `gituser`  permissions
5. Enable SSH access on Diskstation (Control Panel > Terminal & SNMP > Enable SSH Service)
6. create bare repo as root

```
ssh admin@serverIp
cd /volume1/git/
git --bare init <repo-name>.git
chown -R <user-name> <repo-name>.git
cd <repo-name>.git
git update-server-info
```

7. Clone your repository somewhere
Once you have SSH access enable you can then clone the repository
`git clone ssh://<user-name>@<server-ip>/volume<volume-number>/git/<repo-name>.git`