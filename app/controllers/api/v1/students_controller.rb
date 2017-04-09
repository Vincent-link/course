class Api::V1::StudentsController < ApiController
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

  def show
    @student = Student.find(params[:id])
    @lessons = Lesson.where(:student_id => params[:id])

    render :json => {
      :name => @student.name,
      :cous => @lessons.map { |lesson|
          { :name => @lesson.name,
            :cou_url => api_v1_cou_url(lesson.cou_id)
          }
        }
    }
  end
end
