# change the dir to acess sas-admin

cd /opt/sas/viya/home/bin

# obtain a list if servers
./sas-admin cas servers list

# see the list of sessions of a user (example: eric)
./sas-admin cas sessions list -server cas-shared-default --superuser --owner eric

# terminate a session by id
./sas-admin cas sessions delete -server cas-shared-default --superusar --session-id 2948dhaks-128318jdosiasd-edikf-3236

# see any process ownser
ps -ef | grep eric