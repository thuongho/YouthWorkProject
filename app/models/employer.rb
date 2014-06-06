class Employer < ActiveRecord::Base
  has_one :employer_address
  has_many :supervisors
end
