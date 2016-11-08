require_relative 'exit'
require_relative 'main_command_processor'

exit_instruction

def get_command
  STDIN.gets.chomp.downcase.strip
end

loop do
  cmd = get_command
  exit_command?(cmd) && break

  MainCommandProcessor.process(cmd)
end
