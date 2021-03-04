# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  
  # before_action :configure_sign_in_params, only: [:create]

  def after_sign_up_path_for(resource)
    if current_user.user_interests.count >=1
      activities_path
    else
      user_interests_path
    end
  end

  # GET /resource/sign_in
  # def create
  #   if @user.save
  #     redirect_to user_interests_path
  #   else 
  #     render :new
  #   end
  # end

  # def update
  #   super
  #   if @user.save
  #     redirect_to activities_path
  #   else
  #     render :new
  #   end
  # end
  # POST /resource/sign_in
  # def create
  #   super
  # end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end

  # protected

  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end