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

    validate_title
    validate_cost

    @errors.empty?
  end

  private

  def validate_title
    if !@title.is_a?(String)
      @errors << "Title is not a String"
    end
  end

  def validate_cost
    if !@cost.is_a?(Numeric)
      @errors << "Cost is not a Numeric value"
    end
  end
end
