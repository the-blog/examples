require_relative '../test_helper'

class TestStorage < Minitest::Test
  def test_new_method
    exception = assert_raises NoMethodError do
      Storage.new
    end

    assert_match /private method `new'/, exception.message
  end
end

