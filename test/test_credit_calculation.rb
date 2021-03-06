require_relative 'test_helper'
require_relative '../lib/credit_calculation/personal_credit.rb'
require_relative '../lib/credit_calculation/applicant.rb'
require_relative '../lib/credit_calculation/biz_dets.rb'
require 'minitest/autorun'
require 'rake/testtask'

class CreditCalculationTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::CreditCalculation::VERSION
  end

  def setup
    @applicant_01 = Applicant.new(700, 2, "Small Business", "Construction", 100000)
  end

  def test_pers_credit_score
    assert_equal 0.05, PersonalCredit::Default[750]
    refute_equal 0.01, PersonalCredit::Default[800]
  end

  def test_biz_dets
    assert_equal 0, BusinessDetails::Age.key(0.75)
  end

  def test_biz_industry
    assert_equal 0.1, BusinessDetails::Industry["Construction"]
  end

  def test_applicant
    assert_equal @applicant_01.personal_credit, 700
    assert_equal @applicant_01.biz_age, 2
    assert_includes BusinessDetails::Type, @applicant_01.biz_type
    assert_equal @applicant_01.biz_industry, "Construction"
  end

end
