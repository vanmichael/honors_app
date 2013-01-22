class AppsController < ApplicationController

	def new
		@user = current_user
		@app = App.new
	end

	def create
		@app = App.new(params[:app])

	  	if @app.save
	  		 @user = current_user
	  		 @faculty_email = @app.faculty_email
       		 UserMailer.faculty_rec_email(@user, @faculty_email).deliver
	  		 flash[:success] = "Application Created"
	  		 redirect_to root_path
	  	else
	  		render 'new'
	  	end
	end

	def show
		@app = App.find(params[:id])
	end

	def edit
		@app = App.find(params[:id])
		@user = current_user
	end

	def update
		@app = App.find(params[:id])
		if @app.update_attributes(params[:app])
        	flash[:success] = "Application updated"
        	redirect_to root_path
    	else
    		render 'edit'
    	end
    end
end