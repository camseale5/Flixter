class ChangeAvtarToImageOnCourses < ActiveRecord::Migration[5.2]
  def change

    rename_column :courses, :avatar, :image 
  end
end
