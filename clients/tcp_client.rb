require 'socket'

TCPSocket.open('localhost', 4242)

sleep 60

server_connection.close
server.close
