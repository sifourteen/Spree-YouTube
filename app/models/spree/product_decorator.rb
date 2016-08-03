Spree::Product.class_eval do
	# default_scope { order('position ASC') }
	has_many :videos, :as => :watchable
end