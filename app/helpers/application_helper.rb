module ApplicationHelper
	def title(page_title)
		content_for :title do
			"PM Tool | #{page_title}"
		end
	end
end
