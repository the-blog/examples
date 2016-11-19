require_relative '../test_helper'

class TestPhoneBill < Minitest::Test
  def setup
    @bill = PhoneBill.new
  end

  def test_title_after_create
    assert_equal 'Phone Calling bill', @bill.title
  end

  def test_cost_after_create
    assert_equal 0.0, @bill.cost
  end

  def test_created_at_after_create
    assert @bill.created_at != nil
  end
end
