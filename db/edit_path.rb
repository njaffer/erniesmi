a = Archive.where("path LIKE '%carys terr%'")
a.all.each do |one| 
	one.path = "carysexhibit"  
	one.save 
end	