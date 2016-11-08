module ExitProcessor
  class << self
    def manual
      puts "Type `exit` or `quit` to exit"
      puts "Type `help` to get help"
    end

    def exit?(cmd)
      %w[ exit quit ].include?(cmd.downcase)
    end
  end
end
