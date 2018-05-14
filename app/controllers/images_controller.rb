class ImagesController < ApplicationController
  def create
    @image = image.create(image_params)
  end

  private

  # Use strong_parameters for attribute whitelisting
  # Be sure to update your create() and update() controller methods.

  def image_params
    params.require(:user).permit(:file)
  end
end
