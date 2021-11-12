class Post < ApplicationRecord
		validates :name, :presence => true
		validates :title, :presence => true,
											:length => { :minimum => 3 }

		has_many :comments, :dependent => :destroy
		mount_uploader :image, ImageUploader

			belongs_to :user
end
