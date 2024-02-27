import socket
hostname=socket.gethostname()
server_ip=socket.gethostbyname(hostname)
socket_server=socket.socket(socket.AF_INET, socket.SOCK_STREAM)
socket_server.bind((server_ip, 65432))
socket_server.listen(1)
print('ZUI服务器已启动,等待连接中....')
while True:
    client_socket, client_address=socket_server.accept()
    print("客户端已连接"+str(client_address))
    client_socket.settimeout(1)
    while True:
        try:
            date=client_socket.recv(1024)
            if len(date)>0:
                print('用户1:'+date.decode('utf-8')
                      )
                date=''
        except socket.timeout:
            pass
        if input('申请:'):
            response=str(input('ZUI:'))
            client_socket.sendall(response.encode('utf-8'))

