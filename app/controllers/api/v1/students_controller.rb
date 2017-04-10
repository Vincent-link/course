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
    @cous = @student.participated_cous

    render :json => {
      :name => @student.name,
      :data => @cous.map { |cou|
          { :name => cou.name,
            :name = >teacher.name,
            :cou_url => api_v1_cou_url(cou.id)
          }
        }
    }
  end
end
