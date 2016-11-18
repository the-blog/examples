require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require_relative 'helpers/app_helper'
require_relative 'helpers/command_line_helper'

require_app_processors
require_app_models

ExitProcessor.manual
MainCommandProcessor.cli
