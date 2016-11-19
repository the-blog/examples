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

      @bill = PhoneBill.new

      puts "Please type a cost:".red
      print '> '
      cost = CommandLineHelper.get_input
      @bill.cost = cost.to_f

      puts "Check the data".red

      show_bill(@bill)
    end

    def create_transport_bill
      puts "Create New Transport Bill".green

      @bill = PhoneBill.new

      puts "Please type a cost:".red
      print '> '
      cost = CommandLineHelper.get_input
      @bill.cost = cost.to_f

      puts "Check the data".red

      show_bill(@bill)
    end

    def create_bill
      puts "Create New Bill".green

      @bill = PhoneBill.new

      puts "Please type a title:".red
      print '> '
      title = CommandLineHelper.get_input
      @bill.title = title.to_s

      puts "Please type a cost:".red
      print '> '
      cost = CommandLineHelper.get_input
      @bill.cost = cost.to_f

      puts "Check the data".red

      show_bill(@bill)
    end

    def list
      puts "List of Bills".green
    end

    def destroy
      puts "Destroy a Bill".red
    end

    def show_bill(bill)
      puts
      puts "Title: #{ bill.title.cyan }"
      puts "Cost: #{ bill.cost.to_s.cyan }"
      puts "Created at: #{ bill.created_at.to_s.cyan }"
      puts

      validation_status = bill.valid? ? 'VALID'.green : 'INVALID'.red
      puts "Bill is #{ validation_status }"

      show_errors_array(bill.errors) unless bill.valid?
    end

    def show_errors_array(errors)
      errors.each_with_index do |error, index|
        puts "#{ index.next }: #{ error.red }"
      end
    end
  end
end
