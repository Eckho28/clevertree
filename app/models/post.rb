class Post < ActiveRecord::Base
	mount_uploader :DL, ImageUploader
end
