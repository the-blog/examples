class Bill
  attr_reader :title, :cost
  attr_writer :title, :cost

  def initialize
    @title = 'No Title'
    @cost  = 0.0
  end
end
