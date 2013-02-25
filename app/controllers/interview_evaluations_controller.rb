class InterviewEvaluationsController < ApplicationController

	def index
		@interview_evaluations = InterviewEvaluation.paginate(:conditions => {:user_id => current_user}, :page => params[:page], :order => 'created_at desc')
	end

	def new
		@interview_evaluation = InterviewEvaluation.new
		@user = current_user.id
	end

	def create
		@user = current_user.id
		@interview_evaluation = InterviewEvaluation.new(params[:interview_evaluation])
		if @interview_evaluation.save
			flash[:success] = "Interview Evaluation Saved!"
			redirect_to root_path
		else
			flash[:notice] = "Interview Evaluation not saved!!"
			render 'new'
		end
	end

	def show
		@interview_evaluation = InterviewEvaluation.find(params[:id])
	end
end