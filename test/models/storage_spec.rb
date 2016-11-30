require_relative '../test_helper'

class TestStorage < Minitest::Test
  def test_new_method
    exception = assert_raises NoMethodError do
      Storage.new
    end

    assert_match /private method `new'/, exception.message
  end

  def test_singleton
    @storage_1 = Storage.instance
    @storage_2 = Storage.instance

    assert_equal @storage_1, @storage_2
    assert_equal @storage_1.object_id, @storage_2.object_id
  end
end
