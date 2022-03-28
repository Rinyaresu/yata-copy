require 'socket'

socket = TCPServer.new(4242)

puts 'Listening to the port 4242...'

loop do
  # When a new connection happens, we need to assign it to some variable so that we can manipulate it
  client = socket.accept

  # Read any information sent by the client
  client_request = client.gets

  puts "Client request: #{client_request}"

  client.close
end

socket.close
