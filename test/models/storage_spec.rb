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

class TestStorageInterface < Minitest::Test
  def test_add_valid_bill
    bill = PhoneBill.new(cost: 10)
    assert_equal storage.add_bill(bill), bill
  end

  def test_add_invalid_bill
    bill = PhoneBill.new(cost: -1)

    exception = assert_raises InvalidBill do
      storage.add_bill(bill)
    end

    assert_match /Bill has validation errors/, exception.message
  end

  private

  def storage
    Storage.instance
  end
end
