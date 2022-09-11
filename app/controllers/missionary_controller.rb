class MissionaryController < ApplicationController
  def import
    uploaded_csv = params[:file]	
    csv_text = File.read(uploaded_csv)

    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
    row_hash = row.to_hash
    m = Missionary.new
    m.city = row_hash["2"]
    m.txt = row_hash["3"]
    m.pdate = row_hash["4"]
    m.ahms = row_hash["5"]
    m.emi = row_hash["6"]
    m.pid = row_hash["1"]
    m.save!
    end
  end  
end
