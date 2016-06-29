class Item < ActiveRecord::Base
	validates :size, presence: true
	validates :description, presence: true
	has_one :operation, :dependent => :delete
	after_destroy { |record| logger.info( "Operation #{record.size} was destroyed." ) }

	
	scope :recent, lambda { where('published_at >= ?', Time.now - 1.week) }

end
