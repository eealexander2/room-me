class RoommatesController < ActionController::Base

	def create 
		roommate = Roommate.new(params[:roommate])
		if roommate.save 
			session[:roommate_id] = roommate.id 			
		else 
		end 	
	end 	

	def show 
		roommate = Roommate.find(params[:id])
	end 

	def potentials 
		roommate = Roommate.find(params[:id])
		
		result = user.find_potentials  
	end 

  def update
    roommate = Roommate.find(params[:id])
    roommate.update_attributes(params)
    roommate.save
  end

end
