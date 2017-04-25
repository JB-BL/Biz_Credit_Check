require_relative './credit_calculation/applicant'
require_relative './credit_calculation/biz_dets.rb'
require_relative './credit_calculation/el.rb'
require_relative './credit_calculation/lgd.rb'
require_relative './credit_calculation/loan_dets.rb'
require_relative './credit_calculation/pd.rb'
require_relative './credit_calculation/personal_credit.rb'
require_relative './credit_calculation/security.rb'

applicant_00000001 = Applicant.new(750, 1, "Micro Business", "Construction", 100000)
pd_applicant_00000001 = PD.new(0.25, 0.5, 0.25)
p applicant_00000001.pd_calc(pd_applicant_00000001.personal_credit_weight, pd_applicant_00000001.industry_weight, pd_applicant_00000001.biz_age_weight)
