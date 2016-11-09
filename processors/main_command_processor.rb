module MainCommandProcessor
  class << self
    def manual
      """
Bills Manager. Command line based Bills Management system:

Please type a command:

1. `1` to start Bills Manager
2. `2` to export the data
3. `exit` to exit
4. `help` to show this manual

Any other command will show you `Unknown command`

Please type a command.
      """
    end

    def process(cmd)
      case cmd
        when '1'
          BillsProcessor.cli
        when '2'
          ExportProcessor.cli
        when 'help'
          puts MainCommandProcessor.manual
        else
          puts 'Unknown command'
      end
    end

    def cli
      loop do
        cmd = CommandLineHelper.get_command
        ExitProcessor.exit?(cmd) && break
        MainCommandProcessor.process(cmd)
      end
    end
  end
end
