require 'minitest/autorun'

require_relative '../../models/bill'
require_relative '../../models/phone_bill'

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
end

