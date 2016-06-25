class MatchesController < ActionController::Base

	def create 
		match = Match.new(params[:match])
		render json: { match: match }
	end 

	def index 
		roommate = Roommate.find(:id)
		matches = roommate.matches 
		fulfilled_matches = []
		matches.each do |match|
			if match.fulfilled
				fulfilled_matches << matches 
			end 
		end 

		render json: {fulfilled_matches: fulfilled_matches}
	end 

	def show 
    match = Match.find(params[:id])

    messages = match.messages
	end

  
end 