module BillsProcessor
  class << self
    def greeting
puts """
You are in the `Bills` Processor
type `help` to show the list of commands
""".light_yellow
    end

    def manual
puts """
Bills Manager. Bills Processor

Please type a command:

1. `1` to create a new bill
2. `2` to show the list of bills
3. `3` to destroy a bill
4. `help` to show this manual

Any other command will show you `Unknown command`

Please type a command.
""".light_cyan
    end

    def process(cmd)
      case cmd
        when '1'
          create
          greeting
        when '2'
          list
          greeting
        when '3'
          destroy
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

    def create
      puts "Create New Bill".green
    end

    def list
      puts "List of Bills".green
    end

    def destroy
      puts "Destroy a Bill".red
    end
  end
end
