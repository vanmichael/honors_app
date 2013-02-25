class InterviewEvaluation < ActiveRecord::Base
attr_accessible :user_id, :app_id, :name, :date, :applicant_name, :q1, :q1_com

	belongs_to :user
	belongs_to :app
end