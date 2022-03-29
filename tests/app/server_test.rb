require 'test/unit'
require 'socket'

class ServerTest < Test::Unit::TestCase
  def test_save_email
    server = TCPSocket.open('localhost', 4242)

    server.puts "GUARDAR email\nteste@teste.com"
    response = read_response(server)

    assert_equal "CRIADO\nEmail <teste@teste.com> guardado com sucesso\n", response
    server.close
  end

  def read_response(server)
    response = ''
    while line = server.gets
      response += line
    end
    response
  end

  def test_get_email
    server = TCPSocket.open('localhost', 4242)

    server.puts "GET email\nteste@teste.com"
    response = read_response(server)

    assert_equal "OK\nteste@teste.com\n", response
    server.close
  end
end
