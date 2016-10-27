def exit_command?(cmd)
  %w[ exit quit ].include?(cmd.downcase)
end

puts "Type the command"
puts "Type `exit` or `quit` to exit"

loop do
  cmd = STDIN.gets.chomp
  break if exit_command?(cmd)
end
