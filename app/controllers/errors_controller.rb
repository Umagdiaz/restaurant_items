class ErrorsController < ApplicationController

    def routing_error
      redirect_to root_path
    end
    
  end