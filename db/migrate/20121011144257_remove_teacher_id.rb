require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class RemoveTeacherId < ActiveRecord::Migration
  def up
    remove_column :students, :teacher_id
  end
end
