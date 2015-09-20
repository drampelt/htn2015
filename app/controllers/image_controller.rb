class ImageController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def send_image
  	image_analysis = Indico.fer params[:image]
  	render json: image_analysis
  end
  
end
