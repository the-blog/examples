require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require_relative 'exit_processor'
require_relative 'main_command_processor'

puts ExitProcessor.manual

def get_command
  STDIN.gets.chomp.downcase.strip
end

MainCommandProcessor.cli
