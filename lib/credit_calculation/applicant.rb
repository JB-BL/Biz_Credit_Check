require_relative 'biz_dets'
require_relative 'personal_credit'

class Applicant
  attr_accessor :personal_credit, :biz_age, :biz_type, :biz_industry, :loan_size, :x

  def initialize(personal_credit, biz_age, biz_type,
                biz_industry, loan_size)
    @personal_credit = personal_credit
    @biz_age = biz_age
    @biz_type = biz_type
    @biz_industry = biz_industry
    @loan_size = loan_size
  end

  def pd_calc(personal_credit_weight, industry_weight, biz_age_weight)
    @pd = ((personal_credit_weight * PersonalCredit::Default[@personal_credit]) + (industry_weight * BusinessDetails::Industry[@biz_industry]) + (biz_age_weight * BusinessDetails::Age[@biz_age])).round(5)
  end
end

x = Applicant.new(750, 1, "Micro Business", "Construction", 100000)
p x.pd_calc(0.5, 0.25, 0.25)
