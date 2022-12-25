class AboutController < ApplicationController

def import_data
end

def import
  uploaded_csv = params[:file]  
  csv_text = File.read(uploaded_csv)

  csv = CSV.parse(csv_text, :headers => true)
  csv.each do |row|
    row_hash = row.to_hash
    s= Stamp.new
    s.cName = row_hash["1"]
    s.pName = row_hash["2"]
    s.Address = row_hash["3"]
    s.MTimes = row_hash["4"]
    s.Waddr = row_hash["5"]
    s.Com = row_hash["6"]
    s.save!
  end 
end  

end
