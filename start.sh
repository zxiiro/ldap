#!/bin/bash

rm -rf /etc/ldap/slapd.d/* /var/lib/ldap/*
slapadd -F /etc/ldap/slapd.d/ -n 0 -l /backup/ldap_config.ldif
slapadd -F /etc/ldap/slapd.d/ -n 1 -l /backup/ldap_users.ldif
chown -R openldap:openldap /etc/ldap/slapd.d/ /var/lib/ldap/

/usr/sbin/slapd -F /etc/ldap/slapd.d -d 0

