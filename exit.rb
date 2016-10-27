def exit_instruction
  puts "Type `exit` or `quit` to exit"
end

def exit_command?(cmd)
  %w[ exit quit ].include?(cmd.downcase)
end
