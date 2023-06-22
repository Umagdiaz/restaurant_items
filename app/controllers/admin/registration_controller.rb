class Admin::RegistrationController < Devise::RegistrationsController
  before_action :check_existing_admin, only: [:new]
  
  private
  
  def check_existing_admin
    if Admin.exists?
      redirect_to new_admin_session_path, alert: 'Admin its already created.'
    end
  end
end  