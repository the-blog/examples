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
    unless @title.is_a?(String)
      @errors << "Title is not a String"
      return
    end

    if @title.size > 100
      @errors << "Title is too long"
    end

    if @title.size < 10
      @errors << "Title is too short"
    end

    if @title.empty?
      @errors << "Title is blank"
    end
  end

  def validate_cost
    unless @cost.is_a?(Numeric)
      @errors << "Cost is not a Numeric value"
      return
    end

    if @cost.zero?
      @errors << "Cost is zero"
    end

    if @cost < 0
      @errors << "Cost is less than 0"
    end

    if @cost > 10000
      @errors << "Cost is greater than 10.000"
    end
  end
end
