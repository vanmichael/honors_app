class UsersController < ApplicationController

  def home
  end

  def index
    @users = User.paginate(page: params[:page])
    @student_applicants = User.paginate(:conditions => {:user_type => 1}, :page => params[:page], :order => 'created_at desc')
    @faculty_members = User.paginate(:conditions => {:user_type => 2}, :page => params[:page], :order => 'created_at desc')
    @committee_members = User.paginate(:conditions => {:user_type => 3}, :page => params[:page], :order => 'created_at desc')
  end

  def new
    @user = User.new
  end

  def new_faculty_user
    @user = User.new
  end

   def new_committee_user
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
       UserMailer.welcome_email(@user).deliver
       sign_in @user
       if @user.user_type == 1
       flash[:success] = "Student Applicant User Account Created"
       redirect_to new_app_path(@user)
       end
       if @user.user_type == 2
       flash[:success] = "Faculty User Account Created"
       redirect_to new_facultyrec_path(@user)
       end
       if @user.user_type == 3
       flash[:success] = "Committee Member User Account Created"
       redirect_to new_committee_member_evaluation_path(@user)
       end 
    else
       redirect_to root_path
    end
  end

  def show
  	@user = User.find(params[:id])
    @app = App.find_by_user_id(@user)
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update_attributes(params[:user])
        sign_in @user
        flash[:success] = "User Profile updated"
        redirect_to @user
    else
        render 'edit'
    end
  end
end

