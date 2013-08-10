module ApplicationHelper
	def title(page_title)
		content_for :title do
			"PM Tool | #{page_title}"
		end
	end

	def gravatar(project)
		gravatar_image_tag(project.user.email, title: project.user.email)
	end
end
