class Admin::SessionsController < Devise::SessionsController
  before_action :check_credentials, only: [:create, :delete, :update]

  private

  def check_credentials
    email = params[:admin][:email]
    password = params[:admin][:password]

    unless email == Admin.new.email && password == Admin.new.password
      redirect_to new_admin_session_path, alert: 'Credenciales inválidas'
    end
  end
end