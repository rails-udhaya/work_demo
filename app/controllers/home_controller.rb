class HomeController < ApplicationController
		
		def index
				@profile = Linkedin::Profile.get_profile("http://www.linkedin.com/in/udhayakumars")
		end
		
		def fetch_linked_in_details
				@profile = Linkedin::Profile.get_profile(params[:link_in_url])
				#~ Emailer.check_email(params[:link_in_url]).deliver
		end
		
end
