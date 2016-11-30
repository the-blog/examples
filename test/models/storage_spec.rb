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

    exception = assert_raises ::Storage::InvalidBill do
      storage.add_bill(bill)
    end

    assert_match /Bill has validation errors/, exception.message
  end

  def test_bills_as_getter
    assert_equal storage.bills, []
  end

  def test_bills_must_be_just_a_getter
    storage.bills << Bill.new
    assert_equal storage.bills, []
  end

  def test_add_bill_works_well
    original_size = storage.bills.size
    valid_bill = Bill.new(title: 'Custom Title', cost: 42)

    storage.add_bill(valid_bill)
    assert_equal storage.bills.size, (original_size + 1)
  end

  def test_remove_bill_works_well
    original_size = storage.bills.size
    valid_bill = Bill.new(title: 'Custom Title', cost: 42)

    storage.add_bill(valid_bill)
    storage.remove_bill(valid_bill)
    assert_equal storage.bills.size, original_size
  end

  private

  def storage
    Storage.instance
  end
end
