class TimeslotsController < ApplicationController

	def new
		@interview = Timeslot.new
	end

	def create
		@interview = Timeslot.new
	  	if @interview.save
	  		 flash[:success] = "Interview is Scheduled!"
	  		 redirect_to show_interviews_path
	  	else
	  		flash[:error] = "Time slot has already been taken!"
	  		redirect_to new_interview_path
	  	end
	end

	def update
		@interview = Timeslot.find(1)
		if @interview.update_attributes(params[:interview])
        	flash[:success] = "Interview Scheduled!"
        	render 'show'
    	else
    		flash[:success] = "Time slot Already Taken! Please try again!"
    		render 'edit'
    	end
	end

	def show
		@interview = Timeslot.find(1)
	end

	def edit
		@interview = Timeslot.find(1)
	end
end