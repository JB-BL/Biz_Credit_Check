require 'rake/testtask'
require 'minitest/autorun'
require 'test_helper.rb'

class ELTest < Minitest::Test

  def setup
    @current_lgd = LGD.new
  end

  def test_pd
    assert_equal LGD.lgd * PD.pd * EAD.ead, 2.5
  end

end
