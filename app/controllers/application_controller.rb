class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name,
                                                       :last_name,
                                                       :birth_date,
                                                       :gender,
                                                        :user_name,
                                                        :address])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username,
                                                        :first_name,
                                                       :last_name,
                                                       :birth_date,
                                                       :gender,
                                                       :shoe_size,
                                                       :top_size,
                                                       :bottom_size,
                                                       :jacket_size,
                                                       :underwear_size,
                                                       :accessoire_size,
                                                       :jewelry_size,
                                                       :dress_size,
                                                       :swimsuit_size,
                                                       :address])
  end
end
