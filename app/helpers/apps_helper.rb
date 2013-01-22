module AppsHelper

	def essay_for(app, size_version_key)
		if app.image.blank?
			image_tag "rails.png"
		else
			image_tag app.image_url(size_version_key).to_s
		end
	end
end