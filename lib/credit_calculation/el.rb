class ExpectedLoss
  attr_accessor :el

  def initialize(lgd, pd, ead)
    @el = sprintf "%.2f", ((lgd * pd * ead).round(2))
  end
end

applicant_01 = ExpectedLoss.new(0.10, 0.05, 100000)

puts applicant_01.el
