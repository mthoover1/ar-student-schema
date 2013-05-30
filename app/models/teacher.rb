require_relative '../../db/config'

class Teacher < ActiveRecord::Base

  validates :email, :uniqueness => true, :format => { :with => /\S+@\S+[.].{2,}/,
    :message => "Incorrect email format" }

  validate :full_name, :uniqueness => true


  def full_name
    first_name + " " + last_name
  end

end
