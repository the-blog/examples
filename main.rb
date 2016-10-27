def exit_instruction
  puts "Type `exit` or `quit` to exit"
end

def exit_command?(cmd)
  %w[ exit quit ].include?(cmd.downcase)
end

puts "Type the command"
exit_instruction

loop do
  cmd = STDIN.gets.chomp
  exit_command?(cmd) && break
end
