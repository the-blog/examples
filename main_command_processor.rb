module MainCommandProcessor
  def self.process(cmd)
    case cmd
      when 'command 1'
        puts 'Command 1'
      when 'command 2'
        puts 'Command 2'
      else
        puts 'Unknown command'
    end
  end
end
