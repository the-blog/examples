require_relative '../test_helper'

class TestBill < Minitest::Test
  include SharedBillExamples

  def setup
    @bill = Bill.new
  end

  def test_title_after_create
    assert_equal 'No Title', @bill.title
  end
end

class TestBillInitialize < Minitest::Test
  def test_title_after_create
    bill = Bill.new(title: 'Custom Title')
    assert_equal 'Custom Title', bill.title
  end

  def test_cost_after_create
    bill = Bill.new(cost: 33.3)
    assert_equal 33.3, bill.cost
  end
end
