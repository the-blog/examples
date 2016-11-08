module ExitProcessor
  class << self
    def manual
      puts "Type `exit` or `quit` to exit".light_green
      puts "Type `help` to get help".light_yellow
    end

    def exit?(cmd)
      %w[ exit quit ].include?(cmd.downcase)
    end
  end
end
