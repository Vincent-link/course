# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

#创建5个学生，3门课程，5个老师， 随机进行分配

5.times { |i| Student.create( :name => "#{i} student") }
5.times { |i| Teacher.create( :name => "#{i} teacher" ) }
3.times { |i| Cou.create( :name => "#{i} course", :teacher_id => Teacher.ids.sample) }

Student.all.each do |student|
      10.times {student.teachers << Teacher.all.sample }
    student.save
 end

Student.all.each do |student|
      10.times {student.cous << Cou.all.sample }
     student.save
 end
