require_relative 'exit_processor'
require_relative 'main_command_processor'

puts ExitProcessor.manual

def get_command
  STDIN.gets.chomp.downcase.strip
end

loop do
  cmd = get_command
  ExitProcessor.exit?(cmd) && break

  MainCommandProcessor.process(cmd)
end
