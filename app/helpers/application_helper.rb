module ApplicationHelper

    def concat_county
        id = params["id"] 
        one = Archive.where("id=?",id).first
        str = one.county
        str = str + ", "+ one.county1 if (!one.county1.nil?)
        str = str + ", "+ one.county2 if (!one.county2.nil?)
        str = str + ", "+ one.county3 if (!one.county3.nil?)

      return str
    end

    def concat_city
        id = params["id"] 
        one = Archive.where("id=?",id).first
        str = one.city
        str = str + ", "+ one.city1 if (!one.city1.nil?)
        str = str + ", "+ one.city2 if (!one.city2.nil?)
        str = str + ", "+ one.city3 if (!one.city3.nil?)

      return str
    end

      def concat_category
        id = params["id"] 
        one = Archive.where("id=?",id).first
        str = one.category
        str = str + ", "+ one.category1 if (!one.category1.nil?)
        str = str + ", "+ one.category2 if (!one.category2.nil?)
        str = str + ", "+ one.category3 if (!one.category3.nil?)

      return str
    end
	def check_current_access
    # access levels - See wiki https://github.com/mlibrary/tracc/wiki/Permissions
    # 0=super user
    # 1=Admin
    # 9=Guest

    puts ">>>>> user_signed_in? is #{user_signed_in?}"
    puts ">>>>> current_user is #{current_user}" if user_signed_in?

    return 9 unless user_signed_in?

    str = "email='" + current_user.email + "'"
    perm = Permit.where(str)

    # Handle case of no record
    return 9 if perm.first.nil?

    puts ">>>>> current_user perm.first.level is #{perm.first.level}"

    return perm.first.level

  end

  def approve_access
    access_level = check_current_access
    if (access_level>=0 && access_level<=2)
      return true
    end
    return false  
  end  

end
