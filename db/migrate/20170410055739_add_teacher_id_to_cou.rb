class AddTeacherIdToCou < ActiveRecord::Migration[5.0]
  def change
    add_column :cous, :teacher_id, :integer
  end
end
