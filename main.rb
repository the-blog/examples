require 'rubygems'
require 'bundler/setup'
Bundler.require(:default)

require_relative 'processors/exit_processor'
require_relative 'processors/main_command_processor'
require_relative 'processors/bills_processor'
require_relative 'processors/export_processor'
require_relative 'helpers/command_line_helper'

require_relative 'models/bill'
require_relative 'models/phone_bill'
require_relative 'models/transport_bill'

ExitProcessor.manual
MainCommandProcessor.cli
