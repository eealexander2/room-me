class SessionsController < ActionController::Base
	def login
    roommate = Roommate.find_by(roommate: params["roommate"].downcase)
    if roommate && roommate.authenticate(params["password"])
      session[:roommate_id] = roommate.id
      render json: { token: roommate.id }, status: :ok
    else
      render json: { token: "failed" }
    end
	end
end