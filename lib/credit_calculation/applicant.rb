class Applicant
  attr_reader :personal_credit, :biz_age, :biz_type, :biz_industry, :loan_size, :x

  def initialize(personal_credit, biz_age, biz_type,
                biz_industry, loan_size)
    @personal_credit = personal_credit
    @biz_age = biz_age
    @biz_type = biz_type
    @biz_industry = biz_industry
    @loan_size = loan_size
  end
end
