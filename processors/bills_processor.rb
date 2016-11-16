module BillsProcessor
  class << self
    def manual
      """
Bills Manager. Bills Processor

Please type a command:

1. `1` to create a new bill
2. `2` to show the list of bills
3. `3` to destroy a bill
4. `help` to show this manual

Any other command will show you `Unknown command`

Please type a command.
      """
    end

    def process(cmd)
      case cmd
        when '1'
          BillsProcessor.create
        when '2'
          BillsProcessor.list
        when '3'
          BillsProcessor.destroy
        when 'help'
          puts BillsProcessor.manual
        else
          puts 'Unknown command'
      end
    end

    def cli
      puts BillsProcessor.manual

      loop do
        cmd = CommandLineHelper.get_command
        ExitProcessor.exit?(cmd) && break
        BillsProcessor.process(cmd)
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
