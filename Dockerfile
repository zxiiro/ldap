FROM debian
MAINTAINER Thanh Ha <thanh.ha@alumni.carleton.ca>

RUN apt-get update
RUN DEBIAN_FRONTEND=noninteractive apt-get install -qq slapd ldap-utils ssl-cert zip

ADD start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 389
CMD ["/start.sh"]
