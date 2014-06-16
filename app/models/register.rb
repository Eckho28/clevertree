class Register < ActiveRecord::Base
	mount_uploader :dl, ImageUploader
	mount_uploader :rec, ImageUploader
	validates_presence_of :name, :email
    validates_uniqueness_of :email
    validates_confirmation_of :password, :message => "Your password confirmation does not match the password entered"
end
