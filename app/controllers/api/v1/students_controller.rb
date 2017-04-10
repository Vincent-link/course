class Api::V1::StudentsController < ApiController
  #所有的学生
  def index
    @students = Student.all

    render :json => {
      :data => @students.map { |student|
        { :name => student.name,
          :student_url => api_v1_student_url(student.id)
        }
      }
    }
  end
  
  #学生的所有课程及老师
  def show
    @student = Student.find(params[:id])

    render json: @student.to_json(:include => {:cous => {:include => :teacher }})
  end
end
