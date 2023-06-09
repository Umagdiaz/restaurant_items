class ApplicationController < ActionController::Base
    before_action :authenticate_admin!, except: [:index, :show, :show_items]
end
