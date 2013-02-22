class InterviewsController < ApplicationController

	def new
		@interview = Interview.new
	end

	def create
		@interview = Interview.new
	  	if @interview.save
	  		 flash[:success] = "Interview is Scheduled!"
	  		 redirect_to show_interviews_path
	  	else
	  		flash[:error] = "Time slot has already been taken!"
	  		redirect_to new_interview_path
	  	end
	end

	def update
		@interview = Interview.find(1)
		if @interview.update_attributes(params[:interview])
        	flash[:success] = "Interview Scheduled!"
        	render 'show'
    	else
    		flash[:success] = "Time slot Already Taken! Please try again!"
    		render 'edit'
    	end
	end

	def show
		@interview = Interview.find(1)
	end

	def edit
		@interview = Interview.find(1)
	end

end