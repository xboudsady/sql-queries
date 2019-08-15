# If using Cloud 9 IDE

To push to github repo must use SSH option instead of https. `git remote set-url origin YOUR_REMOTE_SSH_URL`
Ensure, and SSH key exist in Cloud 9 editor for push.


## Instance Updates

Ensure that the latest security updates and bug fixes are installed. To do this, in a terminal session in the AWS Cloud9

`sudo yum -y update`

## Check if MySQL is installed.

Confirm whether MySQL is already installed by running the mysql --version command.

If successful, the output contains the MySQL version number.

If you see an error, then install MySQL by running the `install` command.

`sudo yum install -y mysql-server`

## Starting the MySQL

Start MySQL, and then confirm it has started, by running the following command.

`sudo service mysqld start && sudo service mysqld status`

If prompted with [ERROR] Fatal error: Please read "Security" section of the manual to find out how to run mysqld as root!

Start the server as the root. `sudo service mysqld start -u root -p`

To Stop the server

`sudo service mysqld stop`

## Enter MySQL shell environment

Entering MySQL command such as setting up databases, and tables
Pass in the flag to use to root account, along with a password prompt flag

`mysql -uroot -p`

## In the Shell environment

Use the following command to show all databases

`show databases`
