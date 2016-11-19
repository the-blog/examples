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

  private_class_method :new
end
