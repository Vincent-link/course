class Api::V1::LessonsController < ApiController
  def create
    @student = Student.find(params[:student_id])
    @lesson = Lesson.new( :student_id => @student.id,
                          :cou_id => params[:cou_id])
    if @lesson.save
      render :json => { :message => "successfully", :lesson_id => @lesson.id }
    else
      render :json => { :message => "fail", :errors => @lesson.errors}, :status => 400
    end
  end
end
