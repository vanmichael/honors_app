class Facultyrec < ActiveRecord::Base
	attr_accessible :user_id, :faculty_name, :app_id, :student_name, :title, :courses,
					:q1, :q1_com, :q2, :q2_com, :q3, :q3_com, :q4, :q4_com,
					:q5_com, :q6_com, :applicant_name

	belongs_to :user
end