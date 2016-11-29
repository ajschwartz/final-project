class Category < ActiveRecord::Base

validates :type, :presence => true, :uniqueness => true

has_many :giftcards

end
