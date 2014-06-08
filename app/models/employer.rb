class Employer < ActiveRecord::Base
  has_one :employer_address
  has_many :supervisors
  has_many :jobs
  has_many :students, through: :jobs
end
