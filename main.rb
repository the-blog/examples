require_relative 'exit'

puts "Type the command"
exit_instruction

def commands_processor(cmd)
  case cmd
    when 'command 1'
      puts 'Command 1'
    when 'command 2'
      puts 'Command 2'
    else
      puts 'Unknown command'
  end
end

loop do
  cmd = STDIN.gets.chomp.downcase
  exit_command?(cmd) && break

  commands_processor(cmd)
end
