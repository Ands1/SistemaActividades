class RegistrationsController < Devise::RegistrationsController

  skip_before_action :require_no_authentication, only: [:create, :new]
  

    
    def new
      super
    end
  
  end
  
