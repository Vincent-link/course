class Api::V1::TeachersController < ApiController
  #所有的老师
  def index
    @teachers = Teacher.all

    render :json => {
      :data => @teachers.map { |teacher|
        { :name => teacher.name,
          :teacher_url => api_v1_teacher_url(teacher.id)
        }
      }
    }
  end

  #删除老师及其所带课程
  def delete
    @teacher = Teacher.find(params[:id])
    @teacher.destroy

    #跳转到所有老师页
    redirect_to api_v1_teachers_path
  end
end
