class CommitteeMemberEvaluation < ActiveRecord::Base
  attr_accessible :user_id, :app_id, :name, :applicant_name, :q1, :q1_com, :q2, :q3, :q2_q3_com, :q4, :q5_com, :q6_com, :q7

	belongs_to :user
end
