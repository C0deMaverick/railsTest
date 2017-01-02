class Item < ApplicationRecord
	belongs_to :user
	belongs_to :category
	has_many :reviews

	has_attached_file :item_img, styles: { :item_index => "250x350>", :show_item => "320x475>" }, default_url: "/images/:style/missing.png"
  	validates_attachment_content_type :item_img, content_type: /\Aimage\/.*\z/
end
