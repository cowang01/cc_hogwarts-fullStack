require_relative('../models/hogwarts.rb')

Student.delete_all()

student1 = Student.new({"first_name" => "Graham", "second_name" => "Cowan", "house" => "Slytherin", "age" => 86})

student2 = Student.new({"first_name" => "Shaun", "second_name" => "Kennedy", "house" => "Gryffindor", "age" => 4})

student1.save()
student2.save()
