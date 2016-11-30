class Storage
  attr_reader :bills

  def initialize
    @bills = []
  end

  # This line has to be below than `initialize` method
  # Otherwise `@bill` will not be initialized properly
  @@instance = Storage.new

  def self.instance
    @@instance
  end

  def add_bill(bill)
    @bills << bill if bill.valid?
    bill
  end

  def remove_bill(bill)
    @bills = @bills.delete_if {|bill_item| bill_item == bill }
  end

  private_class_method :new

end
