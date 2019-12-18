class LessonsController < ApplicationController
  def show
  end

  private

  helper_method :current_lessons
  def current_lesson
    @current_lesson ||= Lesson.find(params[:id])
  end
end
