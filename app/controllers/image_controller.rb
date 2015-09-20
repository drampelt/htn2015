class ImageController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def send_image
    if params[:detect] == "true"
      image_analysis = Indico.fer params[:image], {"detect" => true}
    else
  	  image_analysis = Indico.fer params[:image]
  	end
  	render json: image_analysis
  end
  
end
