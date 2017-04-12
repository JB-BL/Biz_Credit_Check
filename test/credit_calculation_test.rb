require_relative 'test_helper'
require_relative '../lib/credit_calculation/personal_credit.rb'
require_relative '../lib/credit_calculation/applicant.rb'
require 'minitest/autorun'

class CreditCalculationTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::CreditCalculation::VERSION
  end

  def setup
    @applicant_01 = Applicant.new
  end

  def test_pers_credit_score
    assert_equal 0.05, PersonalCredit::Default[750]
    refute_equal 0.01, PersonalCredit::Default[800]
  end

  def test_applicant
    assert_equal @applicant_01.personal_credit, 750
  end
end
