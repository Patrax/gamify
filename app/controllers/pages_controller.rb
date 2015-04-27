class PagesController < ApplicationController

	before_action :require_auth, except: [:home]

	def cover
		render layout: 'exhibition'
	end

	def home
		if logged_in?
			render template: 'pages/auth_home'
		else
			render template: 'pages/anon_home', layout: 'exhibition'
		end
	end

	def try_challenge

	end

	def course_physics

	end

	def courses

	end

	def viewer

	end

	private
	def require_auth
		if !logged_in?
			flash[:danger] = 'You must log in'
			redirect_to login_path
		end
	end

end
