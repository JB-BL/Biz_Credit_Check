require_relative 'security'
require_relative 'biz_dets'
require_relative 'applicant'
require_relative 'security'

class LGD
  attr_accessor :active_hash, :active_array

  def initialize
    @active_hash = {}
    @applicant_hash = {}
  end

  LGDHash = {["Unsecured", "Small Business"] => {50000 => 0.54, 100000 => 0.37, 500000 => 0.27}, ["Leased Goods", "Small Business"] => 0.04, ["Residential Mortgage", "Small Business"] => 0.03}

  LGDSizeHash = {["Unsecured", "Small Business"] => 4}

  def active_hash_create(applicant_biz_type)
    Security::SecurityTypes.each do |x|
      @active_hash.merge!(x => applicant_biz_type)
    end
  end

  def active_array_create
    @active_array = @active_hash.to_a
  end

  def applicant_hash_create
    @active_hash.each do |x|
      @applicant_hash.merge!(x => LGD::LGDHash[x])
    end
  end
end

xx = Applicant.new(700, 2, "Small Business", "Construction", 100000)
y = LGD.new
y.active_hash_create(xx.biz_type)
y.active_array_create
y.applicant_hash_create
p y
