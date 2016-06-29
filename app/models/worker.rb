class Worker < ActiveRecord::Base
	validates :name, presence: true
	validates :email, presence: true
	has_many :operations, :dependent => :delete_all
end
