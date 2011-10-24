class RegistrationsController < Devise::RegistrationsController
	


  def create
  	debugger
    super
    @user.create_board
  end
end