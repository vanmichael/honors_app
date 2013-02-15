module UsersHelper
	def full_name(firstname, lastname)
		@user.first_name + " " + @user.last_name
	end

	def fullname(user)
		user.first_name + " " + user.last_name
	end

	def show_app_id
		if @app.nil?
			'App Id: Unknown'
		else
			'App Id: ' + @app.id.to_s
		end
	end

	def show_user_type(user)

		if user.user_type == 3
			'Committee Member'
		elsif user.user_type == 2
			'Faculty Member'
		else
			'Student Applicant'
		end
	end

	def honors_app_status
		if @app.nil?
			'incomplete'
		else
			'recieved'
		end
	end

	def honors_app_owner
		fullname(@user)
	end

	def faculty_rec_status
		if @app == nil
			'incomplete'
		else
			@facultyrec = Facultyrec.find_by_app_id(@app)
			if @facultyrec == nil
				'incomplete'
			else
				'recieved'
			end
		end
	end

	def faculty_rec_owner
		if @app == nil
			'None yet!'
		else
			@app.faculty_email
		end
	end

	def view_faculty_rec
		if @app == nil
			'Not Available'
		else
			@facultyrec = Facultyrec.find_by_app_id(@app)
			if @facultyrec == nil
				'Not Available'
			else
				@faculty_member = User.find_by_id(@facultyrec.user_id)
				link_to("View Recommendation from #{fullname(@faculty_member)}", @facultyrec)
			end
		end
	end

	def committee_eval_one_status
		if @app == nil
			'incomplete'
		else
			@committee_evals = CommitteeMemberEvaluation.find_by_app_id(@app)
			if @committee_evals == nil
				'incomplete' 
			else
				'recieved'
			end
		end
	end

	def committee_eval_one_owner
		if @app == nil
			'None yet!'
		else
			@committee_member_evaluations = CommitteeMemberEvaluation.find_all_by_app_id(@app)
			if @committee_member_evaluations.empty?
				'1st Evaluator for: ' + fullname(@user)
			else
			@committee_eval_one = @committee_member_evaluations.first
			@committee_member_one = User.find_by_id(@committee_eval_one.user_id)
			fullname(@committee_member_one)
			end
		end
	end

	def view_eval_one
		if @app == nil
			'Not Available'
		else
			@committee_member_evaluations = CommitteeMemberEvaluation.find_all_by_app_id(@app)
			if @committee_member_evaluations.empty?
				'Not Available'
			else
			@committee_eval_one = @committee_member_evaluations.first
			@committee_member_one = User.find_by_id(@committee_eval_one.user_id)
			link_to "View Evaluation from #{fullname(@committee_member_one)}", @committee_eval_one
			end
		end
	end

	def committee_eval_two_status
		if @app == nil
			'incomplete'
		else
			@commeval = CommitteeMemberEvaluation.find_all_by_app_id(@app)
			@count = @commeval.count
			if @count > 1
				'recieved'
			else
				'incomplete'
			end
		end
	end

	def committee_eval_two_owner
		if @app == nil
			'None yet!'
		else
			@committee_member_evaluations = CommitteeMemberEvaluation.find_all_by_app_id(@app)
			if @committee_member_evaluations.count > 1
			@committee_eval_two = @committee_member_evaluations.last
			@committee_member_two = User.find_by_id(@committee_eval_two.user_id)
			fullname(@committee_member_two)
			else
			'2nd Evaluator for: ' + fullname(@user)
			end
		end
	end

	def view_eval_two
		if @app == nil
			'Not Available'
		else
			@committee_member_evaluations = CommitteeMemberEvaluation.find_all_by_app_id(@app)
			if @committee_member_evaluations.count > 1
			@committee_eval_two = @committee_member_evaluations.last
			@committee_member_two = User.find_by_id(@committee_eval_two.user_id)
			link_to "View Evaluation from #{fullname(@committee_member_two)}", @committee_eval_two
			else
			'Not Available'
			end
		end
	end

	def image_status(status)
		if status == 'recieved'
			image_tag("greencheck.jpg")
		elsif status == 'incomplete'
			image_tag("incomplete.png")
		end
	end
end
