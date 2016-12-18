class ImagesController < ApplicationController
  before_action :authenticate_user!
  def create
    @course = Course.find(params[:course_id])
    @course.images.create(photo_params)
    redirect_to new_instructor_course_path
    
  end
  
  private
  
  def photo_params
    params.require(:photo).permit(:image)
  end
end
