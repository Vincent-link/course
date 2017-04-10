# README
学生表：students
课程表：cous
老师表：teachers

学生-课程表：lessons
学生-老师表：teacher_relationships


1. `GET /students/:id`，以Json返回该名学生的所有课程与对应代课老师的信息；
http://localhost:3000/api/v1/students/1

2. `GET /teachers`，以Json返回所有的老师及其所带课程的信息；
http://localhost:3000/api/v1/teachers

3. `DELETE /teachers/:id`，删除该老师与所带课程的全部信息。
http://localhost:3000/api/v1/teachers/1

注意：访问之前，要执行rake db:seed，导入测试数据
