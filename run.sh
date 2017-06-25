#
# Run apache with some init steps.
#

tail -F /var/log/apache2/*log &
httpd
