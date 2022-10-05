class ManuscriptController < ApplicationController
	def import
    uploaded_csv = params[:file]	
    csv_text = File.read(uploaded_csv)

    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
    row_hash = row.to_hash
    m = Manuscript.new
    m.mnum = row_hash["1"]
    m.c_or_s = row_hash["2"]
    m.ste = row_hash["3"]
    m.town = row_hash["4"]
    m.m = row_hash["5"]
    m.dd = row_hash["6"]
    m.yr = row_hash["7"]
    m.marking = row_hash["8"]
    m.county = row_hash["9"]
    m.emi = row_hash["10"]
    m.old_id = row_hash["11"]
    m.new_id = row_hash["12"]
    m.save!
    end
  end  
end
