require 'test/unit'
require 'thread'
require 'socket'
require_relative '../lib/server'
require 'simplecov'
SimpleCov.start 'rails'

class TestMyServer < Test::Unit::TestCase
  def test_server
    thr = Thread.new { MyServer.start }
    sleep 2
    assert TCPSocket.new('localhost', 8000)
  end
end
