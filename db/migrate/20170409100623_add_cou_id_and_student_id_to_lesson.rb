class AddCouIdAndStudentIdToLesson < ActiveRecord::Migration[5.0]
  def change
    add_column :lessons, :student_id, :integer
    add_column :lessons, :cou_id, :integer
  end
end
