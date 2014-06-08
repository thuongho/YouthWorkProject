class HeadshotDemoController < ApplicationController
  helper :headshot

  def index
  end

  def create
    Headshot_photo.create(camera_params)
  end

  private

    def camera_params
      params.require(:headshot_photo).permit(:description, :image_content_type, :image_file_name, :image_file_size, :image_updated_at)
    end
end
