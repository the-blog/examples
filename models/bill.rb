class Bill
  attr_accessor :title, :cost
  attr_reader :errors

  def initialize
    @title = 'No Title'
    @cost  = 0.0

    @errors = []
  end

  def valid?
    @errors = []

    if !@title.is_a?(String)
      @errors << "Title is not a String"
    end

    if !@cost.is_a?(Numeric)
      @errors << "Cost is not a Numeric value"
    end

    @errors.empty?
  end
end
