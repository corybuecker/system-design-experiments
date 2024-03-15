rm -Rf /var/lib/postgresql/data/*
cp -R /opt/backups/* /var/lib/postgresql/data/
touch /var/lib/postgresql/data/standby.signal
