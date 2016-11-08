module MainCommandProcessor
  def self.manual
    """
Main Command Processor allow to use the following commands:

1. `command 1` will show you text `Command 1`
2. `command 2` will show you text `Command 2`
3. Any other command will show you `Unknown command`

Please type a command.
    """
  end

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
