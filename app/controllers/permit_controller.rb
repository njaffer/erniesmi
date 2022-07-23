class PermitController < ApplicationController
include ApplicationHelper

 def index

   @allp = Permit.all
   @allu = User.all

   @uname = ['']
   @allu.each do |t|
      @uname << t.email
    end

   @all_levels = ["Admin",  "Guest"]
   @all_levels_val = ["1", "9"]

 end

 def save
    u = params["uname"]
    role = params["role"]
    all_levels = ["Admin",  "Guest"]
    all_levels_val = ["1", "9"]
    pos = all_levels.find_index(role)
    if (!u.empty?)
     p = Permit.new
     p.email = u
     p.level = all_levels_val[pos]
     p.save!
    end	
 end	
end
