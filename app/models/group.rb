class Group < ActiveRecord::Base
	has_many :users_to_groups, :dependent => :destroy  
	has_many :users, :through => :users_to_groups
end
