class FacultyrecsController < ApplicationController

	def index
		@facultyrecs = Facultyrec.paginate(:conditions => {:user_id => current_user.id.to_s }, :page => params[:page], :order => 'created_at desc')
	end

	def new
		@user = current_user
		@facultyrec = Facultyrec.new
	end

	def create
		@facultyrec = Facultyrec.new(params[:facultyrec])
		if @facultyrec.save
			flash[:success] = "Recommendation Sent"
			redirect_to root_path
		else
			flash[:notice] = "Recommendation unsuccessfully saved"
			redirect_to new_facultyrec_path
		end
	end

	def show
	    @facultyrec = Facultyrec.find(params[:id])
	end


end