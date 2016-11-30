class TransportBill < Bill
  def initialize(args = {})
    super(args)
    @title = 'Transport bill'
  end
end
