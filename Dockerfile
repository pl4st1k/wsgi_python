from pl4st1k/apacheworker
RUN yum -y upgrade

RUN yum install -y epel-release
RUN yum install -y mod_wsgi python2-pip gcc python2-devel
RUN pip install -U pip setuptools
ADD entrypoint.sh /usr/local/bin/
ADD app.conf /etc/httpd/conf.d/

ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
