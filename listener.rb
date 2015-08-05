#!/usr/bin/env ruby

require 'socket'

server = TCPServer.new 2000

loop do
  client = server.accept
  client.puts "Okay, I'll restart thin."
  path = File.expand_path(__FILE__).sub! "listener.rb", ""
  succeeded = system( "sh #{path}restart-thin.sh" )
  if succeeded
    client.puts "Successfully restarted thin."
  else
    client.puts "Something went wrong when restarthing thin. I don't know why, I'm just a simple TCPServer :("
  end
  client.close()
end
