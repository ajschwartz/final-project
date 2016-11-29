class Giftcard < ActiveRecord::Base

validates :amount, :presence => true
validates :date, :presence => true
validates :code, :presence => true
validates :retailer_id, :presence => true

has_many :usages
belongs_to :retailer
belongs_to :category
has_many :givers

end
