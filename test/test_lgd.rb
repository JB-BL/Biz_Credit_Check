require 'rake/testtask'
require 'minitest/autorun'
require_relative 'test_helper.rb'
require_relative '../lib/credit_calculation/security'
require_relative '../lib/credit_calculation/lgd.rb'

class LGDTest < Minitest::Test
  def setup
    @applicant_01 = Applicant.new(700, 2, "Small Business", "Construction", 100000)
    @lgd = LGD.new

    @lgd.active_hash_create(@applicant_01.biz_type)
    @lgd.active_array_create
  end

  def test_security_type
    assert_includes Security::SecurityTypes, "Unsecured"
  end

  def test_LGDArray_contains
    assert_includes @lgd.active_array, ["Leased Goods", "Small Business"]
  end
end
