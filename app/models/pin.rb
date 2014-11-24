class Pin < ActiveRecord::Base
	belongs_to :user

	has_attached_file :image, { :medium => "300x300>", :thumb => "100x100>" }
	validates_attachment :image, presence: true, content_type: { content_type: ["image/jpg", "image/jpeg", "image/png"] }
end
