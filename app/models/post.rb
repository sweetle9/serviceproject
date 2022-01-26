class Post < ApplicationRecord
		validates :name, :presence => true
		validates :title, :presence => true,
											:length => { :minimum => 3 }

		has_many :comments, :dependent => :destroy
		has_many :favorites, dependent: :destroy
		mount_uploader :image, ImageUploader

			belongs_to :user
			
		scope :filter_by_starts_with, -> (name) { where("name like ?", "%#{name}%")}
end
