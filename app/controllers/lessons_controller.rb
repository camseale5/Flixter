class LessonsController < ApplicationController
  before_action :authenticate_user!
  before_action :user_enrollment_status, only: [:show]
  
  def show
  end



  helper_method :current_lesson
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
  
  private
  
  def user_enrollment_status
  if current_lesson.section.course.user != current_user
      redirect_to root_url, alert: 'Error Message Here'
  end
end
end
