class CommitteeMemberEvaluationsController < ApplicationController

	def index
		@committee_member_evaluations = CommitteeMemberEvaluation.paginate(:conditions => {:user_id => current_user}, :page => params[:page], :order => 'created_at desc')
	end

	def new
		@evaluation = CommitteeMemberEvaluation.new
		@user = current_user.id
	end

	def create
		@user = current_user.id
		@evaluation = CommitteeMemberEvaluation.new(params[:committee_member_evaluation])
		if @evaluation.save
			flash[:success] = "Evaluation Saved!"
			redirect_to root_path
		else
			flash[:notice] = "Evaluation not saved!!"
			render 'new'
		end
	end

	def show
		@evaluation = CommitteeMemberEvaluation.find(params[:id])
	end
end