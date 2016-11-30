class Storage
  attr_reader :bills

  class InvalidBill < RuntimeError
    attr_reader :message

    def initialize
      @message = 'Bill has validation errors'
    end
  end

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
    raise InvalidBill.new unless bill.valid?
    @bills << bill
    bill
  end

  def remove_bill(bill)
    @bills = @bills.delete_if {|bill_item| bill_item == bill }
  end

  private_class_method :new

end
