class RegisterController < ApplicationController

	def index
		@register = Register.new 

	end

	def create
		Register.create( register_params )
		redirect_to root_path
	end

	def new
	end

	private

	def register_params
		params.require(:register).permit(:name, :email, :password, :password_confirmation, :verification, :dl, :rec)


	end

end
