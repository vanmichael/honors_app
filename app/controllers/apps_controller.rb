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
       		 UserMailer.faculty_rec_email(@user, @faculty_email, @app).deliver
	  		 flash[:success] = "Application Created"
	  		 redirect_to current_user
	  	else
	  		flash[:error] = "Application not created, Go to profile and create a new application, but Please click check box to accept and enter faculty email!"
	  		redirect_to root_path
	  	end
	end

	def show
		@app = App.find(params[:id])
		@user = User.find_by_id(@app.user_id)
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

    def download
    	@user = User.find_by_id(@app.user_id)
    	send_file "babsonmaterials/#{@user.email}.zip"
    end
end