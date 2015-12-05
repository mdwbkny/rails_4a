class Listing < ActiveRecord::Base
	belongs_to :agents

	has_attached_file :image, styles: { large: "600x600>", medium: "300x300>", thumb: "100x100#" }, default_url: "default.jpg"
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end
