require 'socket'

socket = TCPServer.new(4242)

puts 'Listening to the port 4242...'

sleep 60

socket.close
