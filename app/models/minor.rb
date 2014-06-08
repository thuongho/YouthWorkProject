class Minor < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_one :minor_address
  has_many :jobs
  has_many :students, through: :jobs
  belongs_to :school

  before_save :update_age

  validates_presence_of :first_name, :last_name, :ssn, :dob, :grade
  validates :first_name, length: { maximum: 25 }
  validates :last_name, length: { maximum: 25 }

  VALID_SSN_REGEX = /\A[0-9]{3}-[0-9]{2}-[0-9]{4}\z/
  validates :ssn, format: { with: VALID_SSN_REGEX }, uniqueness: true

  VALID_DOB_REGEX = /\A((0[1-9])|(1[0-2]))-((0[1-9])|(1[0-9])|(2[0-9])|(3[01]))-[1-9][0-9]{3}\z/
  validates :dob, format: { with: VALID_DOB_REGEX }


  private

    def update_age
      self.age = age(:dob)
    end

    def age(dob)
      time_now = Time.now.utc.to_date
      present_year = ((now.month > dob.month ||
                      (now.month == dob.month && now.day >= dob.day)) ? 0 : 1)
      student_age = time_now.year - dob.year - current_year_month_passed

      return student_age
    end
end

