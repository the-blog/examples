puts "Type the command"
puts "Type `exit` or `quit` to exit"

loop do
  cmd = STDIN.gets.chomp
  break if %w[ exit quit ].include?(cmd.downcase)
end
