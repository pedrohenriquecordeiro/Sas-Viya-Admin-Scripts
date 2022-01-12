# navigate to CLI facility of SAS Viya
cd /opt/sas/viya/home/bin

# set the SSL_CERT_FILE environment variable to the path location of the trustedcert.pem
export SSL_CERT_FILE =/opt/sas/viya/config/etc/SASSecurityCertificateFramework/cacerts/trustedcerts.pem

# create a profile for the environment
./sas-admin profile init
## -> enter http://server json n

# sign-inprocess
./sas-admin auth login

# get the valid users of environment
./sas-admin identities list-users

# restart service logon
sudo systemctl restart sas-viya-saslogon-default

# list the licenses
./sas-admin licenses 
./sas-admin licenses count

# sas install user
su sas

# is needed sas install user to run sas-opt command . sas-opt is used to run operations infrastructure tasks
./sas-ops --help

# view information for the machine
./sas-ops env
 
# view properties of the components of the machine
./sas-ops info
