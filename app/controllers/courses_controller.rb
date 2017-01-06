class CoursesController < ApplicationController
  def index
    courses = Course.all
    render :index, locals: {courses: courses}
  end

  def show
    @course = Course.find(params[:id])
    @image = Image.new
  end

  
end
