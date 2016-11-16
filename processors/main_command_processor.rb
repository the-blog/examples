module MainCommandProcessor
  class << self
    def greeting
puts """
You are in the `Main` Processor
type `help` to show the list of commands
""".light_yellow
    end

    def manual
puts """
Bills Manager. Command line based Bills Management system:

Please type a command:

1. `1` to start Bills Manager
2. `2` to export the data
3. `exit` to exit
4. `help` to show this manual

Any other command will show you `Unknown command`

Please type a command.
""".light_cyan
    end

    def process(cmd)
      case cmd
        when '1'
          BillsProcessor.cli
          greeting
        when '2'
          ExportProcessor.cli
          greeting
        when 'help'
          manual
        else
          puts 'Unknown command'
          greeting
      end
    end

    def cli
      manual

      loop do
        cmd = CommandLineHelper.get_command
        ExitProcessor.exit?(cmd) && break
        process(cmd)
      end
    end
  end
end
