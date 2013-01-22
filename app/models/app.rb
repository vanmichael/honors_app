class App < ActiveRecord::Base
	attr_accessible :user_id, :facultyrec_id, :commitee_id, :year_of_grad, :applicant_name, :boxnumber, :facultyreference, :q1, :q2, :q3, :q4, :agree, :essay, :transcript, :faculty_email, :faculty_rec_status, :committee_eval_status

	belongs_to :user

	require 'carrierwave/orm/activerecord'
  	mount_uploader :essay, EssayUploader
  	mount_uploader :transcript, TranscriptUploader
end

