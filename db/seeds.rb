# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Student.create!( :name => "张三")
Student.create!( :name => "李四")
Student.create!( :name => "王二")

Teacher.create!( :name => "王老师")
Teacher.create!( :name => "李老师")
Teacher.create!( :name => "项老师")

Cou.create!( :name => "音乐")
Cou.create!( :name => "美术")
Cou.create!( :name => "电影")

Lesson.create!( :student_id => 1, :cou_id =>1)
