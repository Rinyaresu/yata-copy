require 'socket'

socket = TCPServer.new(4242)

puts 'Listening to the port 4242...'

socket.accept

socket.close
