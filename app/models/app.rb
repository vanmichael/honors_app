class App < ActiveRecord::Base
	attr_accessible :user_id, :facultyrec_id, :commitee_id, :year_of_grad, :applicant_name, :boxnumber, :facultyreference, :q1, :q2, :q3, :q4, :agree, :essay, :transcript, :faculty_email, :faculty_rec_status, :committee_eval_status

	belongs_to :user
	has_many :committee_member_evaluations

	validates :agree, presence: true
	VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :faculty_email, presence: true, format: { with: VALID_EMAIL_REGEX }

	require 'carrierwave/orm/activerecord'
  	mount_uploader :essay, EssayUploader
  	mount_uploader :transcript, TranscriptUploader
end

