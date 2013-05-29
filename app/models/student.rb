require_relative '../../db/config'
# require 'csv'
# require 'date'

# implement your Student model here
class Student < ActiveRecord::Base


  

  validates :email, :uniqueness => true, :format => { :with => /\S+@\S+[.].{2,}/,
    :message => "Incorrect email format" }

  validate :not_a_toddler

  validates :phone, :format => { :with => /\d{3}\D*\d{3}\D*\d{4}/,
    :message => "Not a phone number!!!" }

  

  def name
    first_name + " " + last_name
  end

  def age
    now = Date.today
    now.year - self.birthday.year - ((now.month > self.birthday.month || (now.month == self.birthday.month && now.day >= self.birthday.day)) ? 0 : 1)
  end

  def not_a_toddler
    if age < 5
      errors.add(:birthday, "This baby is too young")
    end
  end
end
