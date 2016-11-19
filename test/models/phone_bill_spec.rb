require_relative '../test_helper'

class TestPhoneBill < Minitest::Test
  include SharedBillExamples

  def setup
    @bill = PhoneBill.new
  end

  def test_title_after_create
    assert_equal 'Phone Calling bill', @bill.title
  end
end
