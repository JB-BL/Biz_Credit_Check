require_relative 'security'
require_relative 'biz_dets'
require_relative 'applicant'
require_relative 'security'

class LGD
  attr_accessor :lgd_active_hash, :lgd_active_array

  def initialize
    @lgd_active_hash = {}
  end

  LGDHash = {["Unsecured", "Small Business"] => 0.05, ["Leased Goods", "Small Business"] => 0.04}

  def active_hash_create(applicant_biz_type)
    Security::SecurityTypes.each do |x|
      @lgd_active_hash.merge!(x => applicant_biz_type)
    end
  end

  def active_array_create
    @lgd_active_array = @lgd_active_hash.to_a
  end
end

# xx = Applicant.new
# y = LGD.new
# y.active_hash_create(xx.biz_type)
# y.active_array_create
# p y
