class Question < ActiveRecord::Base
	attr_accessible :question, :app_id
	belongs_to :user
end