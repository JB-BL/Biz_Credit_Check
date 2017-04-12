class Applicant
  attr_reader :personal_credit, :biz_age, :biz_type, :biz_industry

  def initialize
    @personal_credit = 750
    @biz_age = 2
    @biz_type = "Small Business"
    @biz_industry = "Construction"
  end
end
