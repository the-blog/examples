module MainCommandProcessor
  class << self
    def manual
      """
Main Command Processor allow to use the following commands:

1. `command 1` will show you text `Command 1`
2. `command 2` will show you text `Command 2`
3. Any other command will show you `Unknown command`

Please type a command.
      """
    end

    def process(cmd)
      case cmd
        when 'command 1'
          puts 'Command 1'
        when 'command 2'
          puts 'Command 2'
        when 'help'
          puts MainCommandProcessor.manual
        else
          puts 'Unknown command'
      end
    end

    def cli
      loop do
        cmd = get_command
        ExitProcessor.exit?(cmd) && break

        MainCommandProcessor.process(cmd)
      end
    end
  end
end
