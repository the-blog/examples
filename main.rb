require_relative 'exit'

puts "Type the command"
exit_instruction

loop do
  cmd = STDIN.gets.chomp
  exit_command?(cmd) && break
end
