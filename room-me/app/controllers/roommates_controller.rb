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
	user = Roommate.find(params[:id])
	potentials = []
	roommmates = Roomates.where(location: user.location) 
	
	Roomates.where(location: user.location).each do |roommate|
		if user.status == 'a' && (roommate.status == 'c' || roommate.status == 'b') 
			potentials << roommate
		elsif user.status == 'b' && roommate.status == 'a'
			potentials << roommate
		elsif user.status == 'c'
			potentials << roommate
		end 
 end  

end 

end
