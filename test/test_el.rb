require 'rake/testtask'
require 'minitest/autorun'
require 'test_helper.rb'
require_relative '../lib/credit_calculation/el.rb'

class ELTest < Minitest::Test

  def setup
    @applicant_01 = ExpectedLoss.new(0.10, 0.05, 100000)
  end

  def test_el
    assert_equal @applicant_01.el, (sprintf "%.2f", 500.00)
  end

end
