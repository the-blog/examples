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

1. `1` to create a new Phone bill
2. `2` to create a new Transport bill
3. `3` to create a new bill
4. `4` to show the list of bills
5. `5` to destroy a bill
6. `help` to show this manual

Any other command will show you `Unknown command`

Please type a command.
""".light_cyan
    end

    def process(cmd)
      case cmd
        when '1'
          create_phone_bill
          greeting
        when '2'
          create_transport_bill
          greeting
        when '3'
          create_bill
          greeting
        when '4'
          list
          greeting
        when '5'
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

    def create_phone_bill
      puts "Create New Phone Bill".green
    end

    def create_transport_bill
      puts "Create New Transport Bill".green
    end

    def create_bill
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
