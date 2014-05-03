FROM zxiiro/supervisor
MAINTAINER Thanh Ha <thanh.ha@alumni.carleton.ca>

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qq slapd ldap-utils ssl-cert

ADD etc/supervisor/conf.d /etc/supervisor/conf.d

EXPOSE 389

