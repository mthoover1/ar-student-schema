require 'sqlite3'

db = SQLite3::Database.new("db/ar-students.sqlite3")

# ASSIGN RANDOM TEACHER ID's
      # random_id = rand(9)+1

      # student_ids = db.execute("SELECT id FROM students;")

      # student_ids.flatten.each do |student_id|
      #   db.execute("UPDATE students SET teacher_id = " + (rand(9)+1).to_s + " WHERE id = #{student_id};")
      # end




