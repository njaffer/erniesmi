class ArchivesController < ApplicationController
skip_before_action :verify_authenticity_token
protect_from_forgery with: :null_session
include ApplicationHelper

def index
	
end

def edit
	@acategory = Acategory.all.order(:name)
	@acounty = Acounty.all.order(:name)
	@acity = Acity.all.order(:name)
	@county_list = concat_county 
    @city_list = concat_city
    @category_list = concat_category
end	

def save
	id = params["id"]

	a = Archive.where("id=?",id).first
	a.caption = params["title"]
	a.pyear = params["pyear"]
	a.pdate = params["pdate"]
	a.pic_status = params["pic_status"]
	a.cover_page = params["cover_page"]
	a.price = params["pprice"]
	a.cost = params["pcost"]
    
    
    a.county1 = params["county1"]
    a.county2 = params["county2"]
    a.county3 = params["county3"]
    a.county4 = params["county4"]
    a.county5 = params["county5"]
    a.county6 = params["county6"]
    a.county7 = params["county7"]
    a.county8 = params["county8"]
    a.county9 = params["county9"]
    a.county10 = params["county10"]
    a.county = a.county1 + "," + a.county2 + "," + a.county3 + "," + a.county4 + "," + a.county5 
    a.county =  a.county + "," + a.county6 + "," + a.county7 + "," + a.county8 + "," + a.county9 + "," + a.county10
    
    a.city1 = params["city1"]
    a.city2 = params["city2"]
    a.city3 = params["city3"]
    a.city4 = params["city4"]
    a.city5 = params["city5"]
    a.city6 = params["city6"]
    a.city7 = params["city7"]
    a.city8 = params["city8"]
    a.city9 = params["city9"]
    a.city10 = params["city10"] 
    a.city11 = params["city11"]
    a.city = a.city1 + "," + a.city2 + "," + a.city3 + "," + a.city4 + "," + a.city5 + ","
    a.city = a.city + a.city6 + "," + a.city7 + "," + a.city8 + "," + a.city9 + "," + a.city10
 
    
    a.category1 = params["cat1"]
    a.category2 = params["cat2"]
    a.category3 = params["cat3"]
    a.category4 = params["cat4"]
    a.category5 = params["cat5"]
    a.category6 = params["cat6"]
    a.category7 = params["cat7"]
    a.category8 = params["cat8"]
    a.category9 = params["cat9"]
    a.category10 = params["cat10"]
    a.category11 = params["cat11"]
    a.category12 = params["cat12"]
    a.category13 = params["cat13"]
    a.category14 = params["cat14"]
    a.category15 = params["cat15"]
    a.category16 = params["cat16"]
    a.category17 = params["cat17"]
    a.category18 = params["cat18"]
    a.category19 = params["cat19"]
    a.category20 = params["cat20"]
    a.category = a.category1 + "," + a.category2 + "," + a.category3 + "," + a.category4 + ","
    a.category = a.category + "," + a.category5 + "," + a.category6 + "," + a.category7 + "," + a.category8 + ","
    a.category = a.category + "," + a.category9 + "," + a.category10 + "," + a.category11 + "," + a.category12 + ","
    a.category = a.category + "," + a.category13 + "," + a.category14 + "," + a.category15 + "," + a.category16 + ","
    a.category = a.category + "," + a.category17 + "," + a.category18 + "," + a.category19 + "," + a.category20 
    
    
	a.save!
end
	
def show
end
	

def advanced_search

   	@acategory = Acategory.all.order(:name)
	@acounty = Acounty.all.order(:name)
	@acity = Acity.all.order(:name)
    @connector = ['AND', 'OR']
    
    @county = params["county"]
    @county1 = params["county1"]
    @county2 = params["county2"]
    @county3 = params["county3"]
    
    @county = "" if @county.nil?
    @county1 = "" if @county1.nil?
    @county2 = "" if @county2.nil?
    @county3 = "" if @county3.nil?

    @city = params["city"]
    @city1 = params["city1"]
    @city2 = params["city2"]
    @city3 = params["city3"]
    
    @city = "" if @city.nil?
    @city1 = "" if @city1.nil?
    @city2 = "" if @city2.nil?
    @city3 = "" if @city3.nil?

    @con1 = params["con1"]
    @con11 = params["con11"]
    @con12 = params["con12"]
    @con13 = params["con13"]

    @con2 = params["con2"]
    @con21 = params["con21"]
    @con22 = params["con22"]
    @con23 = params["con23"]

    @con3 = params["con3"]
    @con31 = params["con31"]
    @con32 = params["con32"]

    @category = params["category"]
    @category1 = params["category1"]
    @category2 = params["category2"]
    @category3 = params["category3"]
  
    
    @category = "" if @category.nil?
    @category1 = "" if @category1.nil?
    @category2 = "" if @category2.nil?
    @category3 = "" if @category3.nil?
    

  str = ""
  str = str +  " county LIKE '%" + @county + "%'" if (!@county.eql? "")
  str = str + @con1 + " county LIKE '%"+ @county1 + "%'"  if (!@county1.eql? "")
  str = str + @con11+ " county LIKE '%"+ @county2 + "%'"  if (!@county2.eql? "")
  str = str + @con12+ " county LIKE '%"+ @county3 + "%'"  if (!@county3.eql? "")

    str = str + @con13 + " city LIKE '%" + @city + "%'" if (!@city.eql? "")
    str = str + @con2+ " city LIKE '%"+ @city1 + "%'"  if (!@city1.eql? "")
    str = str + @con21+ " city LIKE '%"+ @city2 + "%'"  if (!@city2.eql? "")
    str = str + @con22+ " city LIKE '%"+ @city3 + "%'"  if (!@city3.eql? "")
  

  @category = @category.gsub("'", "''")
  @category1 = @category1.gsub("'", "''")
  @category2 = @category2.gsub("'", "''")
  @category3 = @category3.gsub("'", "''")
 
  

  str = str + @con23 + " category LIKE '%" + @category + "%'" if (!@category.eql? "")
  str = str + @con3 + " category LIKE '%" + @category1 + "%'" if (!@category1.eql? "") 
  str = str + @con31 + " category LIKE '%" + @category2 + "%'" if (!@category2.eql? "")  
  str = str + @con32 + " category LIKE '%" + @category3 + "%'" if (!@category3.eql? "")

  #check if str is starting with AND OR
  substr = str[0,3]
  if substr.eql? "AND"
  	len = str.length - 4
  	str = str.last(len)
  end
  substr = str[0,2]	
  if substr.eql? "OR"
  	len = str.length - 3
  	str = str.last(len)
  end
  		
  @archives = Archive.where(str).page params[:page]
  @total_archives = Archive.where(str)

  if (@total_archives.nil?)
  	@total_archives_count =0
  else 	
    @total_archives_count = @total_archives.count 
  end  
 
  if (str.eql? "")
  	@archives = nil
  end	
end	

def search 

 if (params["back"].eql? "1")
 	params["back"] = 0
 else	
  countysearch = params["countysearch"]
  searchterm = params["searchterm"]
  searchterm = "" if searchterm.nil?
  searchterm = searchterm.gsub("'", "''")
  $lastsearch = searchterm
  if (!countysearch.nil?)
    searchterm = params["county"]
	str = "county LIKE '%"+searchterm+"%' OR county1 LIKE '%"+searchterm+"%' OR county2 LIKE '%"+searchterm+"%'OR county3 LIKE '%"+searchterm+"%'"	 
    @total_archives = Archive.where(str)
	@archives = Archive.where(str).page params[:page]
  else		
	if (searchterm.eql? "")
	  @archives = Archive.order(:pyear).page params[:page]
	  @total_archives = Archive.order(:pyear)
	else
	  str = "caption LIKE '%"+searchterm+"%' OR county LIKE '%"+searchterm+"%' OR county1 LIKE '%"+searchterm+"%' OR county2 LIKE '%"+searchterm+"%'OR county3 LIKE '%"+searchterm+"%'"	
	  str = str + "OR city LIKE '%"+searchterm+"%' OR city1 LIKE '%"+searchterm+"%' OR city2 LIKE '%"+searchterm+"%' OR city3 LIKE '%"+searchterm+"%'"
	  str = str + "OR category LIKE '%"+searchterm+"%' OR category1 LIKE '%"+searchterm+"%' OR category2 LIKE '%"+searchterm+"%' OR category3 LIKE '%"+searchterm+"%' OR category4 LIKE '%"+searchterm+"%' OR category5 LIKE '%"+searchterm+"%'"
	  str = str + "OR category6 LIKE '%"+searchterm+"%' OR category7 LIKE '%"+searchterm+"%' OR category8 LIKE '%"+searchterm+"%' OR category9 LIKE '%"+searchterm+"%' OR category10 LIKE '%"+searchterm+"%'"
	  str = str + "OR category11 LIKE '%"+searchterm+"%' OR category12 LIKE '%"+searchterm+"%' OR category13 LIKE '%"+searchterm+"%' OR category14 LIKE '%"+searchterm+"%' OR category15 LIKE '%"+searchterm+"%' OR category16 LIKE '%"+searchterm+"%'"
	  str = str + "OR category17 LIKE '%"+searchterm+"%' OR category18 LIKE '%"+searchterm+"%' OR category19 LIKE '%"+searchterm+"%' OR category20 LIKE '%"+searchterm+"%'"
	  @total_archives = Archive.where(str)
	  @archives = Archive.where(str).page params[:page]
	end 
  end	 
    $archivelist = @total_archives
    $shortlist = @archives
  end
end	

def import
  uploaded_csv = params[:file]	
  csv_text = File.read(uploaded_csv)

  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
  row_hash = row.to_hash

	county = Array.new
	county.append("Allegan") if row_hash["Allegan"] == "1"
	county.append("Arenacn") if row_hash["Arenac"] == "1" 
	county.append("Berrien") if row_hash["Berrien"]== "1"
	county.append("Branch") if row_hash["Branch"]== "1"
	county.append("Calhoun") if row_hash["Calhoun"]== "1"
	county.append("Cass")  if row_hash["Cass"]== "1"
	county.append("Gennessee") if row_hash["Gennessee"] == "1"
	county.append("Gladwin") if row_hash["Gladwin"]== "1"
	county.append("Gratiot") if row_hash["Gratiot"]== "1"
	county.append("Hillsdale") if row_hash["Hillsdale"]== "1"
	county.append("Ingham") if row_hash["Ingham"]== "1"
	county.append("Ionia") if row_hash["Ionia"]== "1"
	county.append("Isabella") if row_hash["Isabella"]== "1"
	county.append("Jackson") if row_hash["JCounty"]== "1" 
	county.append("Kalamazoo")if row_hash["KCounty"]== "1"  
	county.append("Kent") if row_hash["Kent"] == "1"  
	county.append("Lenawee") if row_hash["Lenawee"]== "1"  
	county.append("Lapeer") if row_hash["Lapeer"] == "1"  
	county.append("Livingston") if row_hash["Livingston"]== "1"  
	county.append("Mackinac") if row_hash["Mackinac"] == "1"  
	county.append("Macomb") if row_hash["Macomb"]== "1"  
	county.append("Midland") if row_hash["Midland"] == "1"  
	county.append("Monroe") if row_hash["MonCounty"] == "1"  
	county.append("Montcalm") if row_hash["Montcalm"] == "1"  
	county.append("Oakland") if row_hash["Oakland"] == "1"  
	county.append("Oceana") if row_hash["Oceana"] == "1"  
	county.append("Ottawa") if row_hash["Ottawa"]== "1"  
	county.append("Saginaw") if row_hash["Saginaw"] == "1"  
	county.append("Saint Clair") if row_hash["StClair"] == "1"  
	county.append("Saint Joseph") if row_hash["StJoseph"]== "1"  
	county.append("Sanilac") if row_hash["Sanilac"] == "1"  
	county.append("Shiwassee") if row_hash["Shiwassee"]== "1"  
	county.append("VanBuren") if row_hash["VanBuren"]== "1"  
	county.append("Washtenaw") if row_hash["Washtenaw"] == "1"    
	county.append("Wayne") if row_hash["Wayne"]== "1"  

	 

	#city
	city = Array.new
	city.append("Adrian") if row_hash["Adrian"]=="1"
	city.append("AnnArbor") if  row_hash["AnnArbor"] =="1"
	city.append("BattleCreek") if row_hash["BattleCreek"]=="1"
	city.append("Coldwater") if row_hash["Coldwater"]=="1"
	city.append("Detroit") if  row_hash["Detroit"] =="1"
	city.append("Dexter") if row_hash["Dexter"]=="1"
	city.append("Flint") if row_hash["Flint"] =="1"
	city.append("Jackson") if row_hash["Jackson"] =="1"
	city.append("Kalamazoo") if row_hash["Kalamazoo"]=="1"
	city.append("Monroe") if row_hash["Monroe"] =="1"
	city.append("Niles") if row_hash["Niles"] =="1"
	city.append("Tecumseh") if row_hash["Tecumseh"]=="1"
	city.append("Ypsilanti") if row_hash["Ypsilanti"]=="1"

	 #category
	c = Array.new
	c.append("19th Century Michigan Letters") if row_hash["NCent"] =="1"
	c.append("20th Century") if row_hash["TCent"] =="1"
	c.append("Michigan Advertising") if row_hash["Advertising"]=="1" 
	c.append("American Home Missionary Society") if row_hash["AHMS"]=="1"
	c.append("Black History") if row_hash["BHistory"] =="1"
	c.append("Campbell Family Letters") if row_hash["Campbell"] =="1"
	c.append("MI Covers") if row_hash["Covers"] =="1"
	c.append("Ernie's Ann Arbor Broken Ring") if row_hash["Ring"]=="1"
	c.append("Ernie's Michigan Collection") if row_hash["EC"] =="1"
	c.append("MI Fancy Cancels") if row_hash["FancyCancels"]=="1" 
	c.append("Letters to Foreign Destinations") if row_hash["FDest"] =="1"
	c.append("MI Free Franks") if row_hash["FFranks"] =="1"
	c.append("MI Genealogy") if row_hash["Geneology"] =="1"
	c.append("German Language Letters") if row_hash["German"] =="1"
	c.append("Ann Arbor Hampden Cancels") if row_hash["Hampden"] =="1"
	c.append("Machine Cancels") if row_hash["MachCancels"] =="1"
	c.append("Manuscripts") if row_hash["Manuscript"] =="1"
	c.append("Maps") if row_hash["Map"]  =="1"
	c.append("Michigan Stampless Letters") if row_hash["EMiS"] =="1"
	c.append("Michigan Territorial") if row_hash["EMiT"] =="1"
	c.append("Northern Michigan") if row_hash["NMichigan"] =="1"
	c.append("Ohio Toledo Strip Letters") if row_hash["OhioTStrip"] =="1"
	c.append("MI Post Cards") if row_hash["PicPostCards"] =="1"
	c.append("Railroads") if row_hash["RR"] =="1"
	c.append("MI Waterways") if row_hash["Waterways"] =="1"
	c.append("Stamps") if row_hash["Stamps"] =="1"
	c.append("Wisconsin/Michigan Territory") if row_hash["Wisconsin"] =="1"
	c.append("Women's Correspondence") if row_hash["Women"]=="1"
	c.append("Thorp/Lybrook Family Letters") if row_hash["Thorp"] =="1"
	c.append("Love Letters") if row_hash["LoveLetters"] =="1"
	c.append("Leona & Frank Ohlhaussen Love Letters") if row_hash["Leona"]=="1"
	c.append("Scott-10,11,25,26,26a") if row_hash["Scott10"]=="1"  
	c.append("Michigan Territorial Exhibit") if row_hash["MTE"] =="1"
	c.append("Michigan/Wisconsin Territory Exhibit") if row_hash["MWTE"]=="1"  
	c.append("Detroit and Algonac Railway Post Office Exhibit") if row_hash["DARP"] =="1" 
	c.append("Michigan Railway Post Offices 1871-1915 Exhibit") if row_hash["MRPO"] =="1"
	c.append("Ransom Dunn") if row_hash["Ransom"]=="1"
	c.append("Letters Containing Correspondence") if row_hash["LCC"] =="1"
	c.append("Privately Owned") if row_hash["PO"] =="1"
	c.append("Publicly Owned") if row_hash["PBO"] =="1"
	c.append("Unusual Postage") if row_hash["Upostage"]=="1"

	a = Archive.new
	 count = 0
	 tempstr = ""
	 while count < county.count
	    
	    a.county1 = county[count] if count ==0
	    a.county2 = county[count] if count ==1
	    a.county3 = county[count] if count ==2
	    a.county4 = county[count] if count ==3
	    a.county5 = county[count] if count ==4
	    a.county6 = county[count] if count ==5
	    a.county7 = county[count] if count ==6

	    if (tempstr.eql? "")
		  tempstr = county[count]
		else	
		  tempstr = tempstr + ", " + county[count]
		end 
		count = count+1
		  
	 end
     
     a.county = tempstr

	 count = 0
	 tempstr =""
	 while count < city.count
	    
	    a.city1 = city[count] if count == 0
	    a.city2 = city[count] if count == 1
	    a.city3 = city[count] if count == 2
	    a.city4 = city[count] if count == 3
	    a.city5 = city[count] if count == 4
	    a.city6 = city[count] if count == 5
	    a.city7 = city[count] if count == 6
	    a.city8 = city[count] if count == 7 
	    a.city9 = city[count] if count == 8

	    if (tempstr.eql? "")
		  tempstr = city[count]
		else	
		  tempstr = tempstr + ", " + city[count]
		end 
		count = count+1

	 end
      a.city = tempstr

     tempstr ="" 
	 count = 0
	 while count < c.count
	    
	    a.category1 = c[count] if count ==0
	    a.category2 = c[count] if count ==1
	    a.category3 = c[count] if count ==2
	    a.category4 = c[count] if count ==3
	    a.category5 = c[count] if count ==4
	    a.category6 = c[count] if count ==5
	    a.category7 = c[count] if count ==6
	    a.category8 = c[count] if count ==7
	    a.category9 = c[count] if count ==8
	    a.category10 = c[count] if count ==9
	    a.category11 = c[count] if count == 10
	    a.category12 = c[count] if count ==11
	    a.category13 = c[count] if count ==12
	    a.category14 = c[count] if count ==13
	    a.category15 = c[count] if count == 14
	    a.category16 = c[count] if count ==15
	    a.category17 = c[count] if count ==16
	    a.category18 = c[count] if count ==17
	    a.category19 = c[count] if count ==18
	    a.category20 = c[count] if count ==19

	    if (tempstr.eql? "")
		  tempstr = c[count]
		else	
		  tempstr = tempstr + ", " + c[count]
		end 

		count = count+1
	 end
	 a.category = tempstr

	 #states
		 a.state = "Indiana" if row_hash["Indiana"]=="1"
		 a.options = "Exhibit" if row_hash["Exhibit"]=="1" 
		 a.options1 = "Outgoing" if row_hash["Outgoing"]=="1"  

        a.fname = row_hash["Name"]
        a.pdate = row_hash["Rdate"]
        a.pic_status = row_hash["ShowPic"]
        a.caption = row_hash["Caption"]
        a.ptype = row_hash["Ptype"] 
        a.pyear = row_hash["Pyear"]
        a.path = row_hash["Ppath"]
        a.price = row_hash["Price"]
        a.cost = row_hash["Cost"]
        a.picval = row_hash["PicVal"]

     a.save! 
      end
    end

  def letter
  	id = params[:id] 
  	nextpic  = params[:next]
  	prevpic  = params[:prev]
  	
  	if nextpic.eql? "1"
  	  nexta =	$archivelist.where("id > ?", id).first
  	  id = nexta.id
  	elsif prevpic.eql? "1"
  	  nexta =	$archivelist.where("id < ?", id).last
  	  id = nexta.id
  	end	

	a = Archive.where("id=?",id)
	@a = ""
	@a = a.first if !a.nil?
	
  end	


   

end
