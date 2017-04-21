class PD

  attr_accessor :pd

  def calculate_pd(personal_credit, biz_industry, biz_age)
    @pd = sprintf "%.5f", ((@personal_credit_weight * @industry_weight * @biz_age_weight).round(5))
  end

  def set_weights(personal_credit_weight, industry_weight, biz_age_weight)
    @personal_credit_weight = personal_credit_weight
    @industry_weight = industry_weight
    @biz_age_weight = biz_age_weight
  end

  def check_weights
    until ((@personal_credit_weight + @industry_weight + @biz_age_weight) == 1.0)
      puts "Your weights do not add up to 100%. please correct this."
      new_weights
    end
  end

  def new_weights
    puts "Please provide a weight for the personal credit score."
    @personal_credit_weight = gets.chomp.to_f
    puts "Please provide a weight for the industry."
    @industry_weight = gets.chomp.to_f
    puts "Please provide a weight for the business age."
    @biz_age_weight = gets.chomp.to_f
  end

end


x = PD.new
x.set_weights(0.25, 0.25, 0.25)
x.check_weights
