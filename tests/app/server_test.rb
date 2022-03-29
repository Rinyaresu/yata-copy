require 'test/unit'
require 'socket'
require_relative '../test_helper'

class ServerTest < Test::Unit::TestCase
  include TestHelper

  def test_save_email
    @server.puts "GUARDAR email\nteste@teste.com"

    assert_equal "CRIADO\nEmail <teste@teste.com> guardado com sucesso\n", response

    content = File.read('./db/emails.txt')

    emails = content.split('\n')
    assert_equal 1, emails.size
  end

  def test_get_email
    @server.puts "GET email\nteste@teste.com"

    assert_equal "OK\nteste@teste.com\n", response
  end
end
