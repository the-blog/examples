class PhoneBill < Bill
  def initialize(args = {})
    super(args)
    @title = 'Phone Calling bill'
  end
end
