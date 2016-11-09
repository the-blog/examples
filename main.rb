require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require_relative 'processors/exit_processor'
require_relative 'processors/main_command_processor'
require_relative 'helpers/command_line_helper'

puts ExitProcessor.manual
MainCommandProcessor.cli
