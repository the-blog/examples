require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require_relative 'exit_processor'
require_relative 'main_command_processor'
require_relative 'command_line_helper'

puts ExitProcessor.manual
MainCommandProcessor.cli
