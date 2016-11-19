module ExitProcessor
  class << self
    def manual
      puts "Type `exit` or `quit` to exit".light_green
      puts "Type `help` to get help".light_yellow
    end

    def exit?(cmd)
      Kernel.abort('Bill Manager says Bye!') if %w[ q! exit! quit! ].include?(cmd.downcase)
      %w[ exit quit ].include?(cmd.downcase)
    end
  end
end
