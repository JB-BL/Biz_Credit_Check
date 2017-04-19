class Applicant
  attr_reader :personal_credit, :biz_age, :biz_type, :biz_industry, :loan_size

  def initialize
    @personal_credit = 750
    @biz_age = 2
    @biz_type = "Small Business"
    @biz_industry = "Construction"
    @loan_size = 150000
    @security = "Unsecured"
  end
end
