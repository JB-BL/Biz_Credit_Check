class PD

  attr_accessor :pd, :personal_credit_weight, :industry_weight, :biz_age_weight

  def initialize(personal_credit_weight, industry_weight, biz_age_weight)
    @personal_credit_weight = personal_credit_weight
    @industry_weight = industry_weight
    @biz_age_weight = biz_age_weight
  end

  # def set_weights(personal_credit_weight, industry_weight, biz_age_weight)
  #   @personal_credit_weight = personal_credit_weight
  #   @industry_weight = industry_weight
  #   @biz_age_weight = biz_age_weight
  # end

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
