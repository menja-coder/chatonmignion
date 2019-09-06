class Order < ApplicationRecord

	belongs_to :user
	has_many :join_order_items
	has_many :items, through: :join_order_items

	after_create :order_email_send

	def order_email_send
		UserMailer.order_email(self).deliver_later(wait: 40.second)
	end
end