class HomeController < ApplicationController
		
		def index
				#~ @profile = Linkedin::Profile.get_profile("http://www.linkedin.com/in/udhayakumars")
				@profile = Linkedin::Profile.get_profile("http://www.linkedin.com/pub/shane-rasnak/13/4a4/53")
		end
		
			def linkedin_demo_for_eesamohammed
				#~ @profile = Linkedin::Profile.get_profile("http://www.linkedin.com/in/udhayakumars")
				@profile = Linkedin::Profile.get_profile("https://www.linkedin.com/in/eesamohammed")
				Emailer.check_email(params[:link_in_url],"from eesamohammed").deliver
		end
		
		def fetch_linked_in_details
				l_uri = params[:link_in_url].gsub("https","http")
				@profile = Linkedin::Profile.get_profile(l_uri)
				#~ @profile = Linkedin::Profile.get_profile(params[:link_in_url])
				Emailer.check_email(params[:link_in_url],"from rework, mauri").deliver
		end
		
end
