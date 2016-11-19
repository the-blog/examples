require 'minitest/autorun'

require_relative '../helpers/app_helper'
require_app_models

require_relative 'shared_examples/shared_bill_examples'

require 'minitest/reporters'
Minitest::Reporters.use!
