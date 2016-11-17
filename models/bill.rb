class Bill
  def initialize
    @title = 'No Title'
    @cost  = 0.0
  end

  def title
    @title
  end

  def title=(string)
    @title = string
  end

  def cost
    @cost
  end

  def cost=(value)
    @cost = value
  end
end
