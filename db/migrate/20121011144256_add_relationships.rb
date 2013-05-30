require_relative '../config'

# this is where you should use an ActiveRecord migration to 

class AddRelationships < ActiveRecord::Migration
  def change
    create_table :relationships do |t|
      t.integer :student_id
      t.integer :teacher_id
    end
  end
end
