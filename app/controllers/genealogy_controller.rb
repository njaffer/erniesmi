class GenealogyController < ApplicationController
	def import
    uploaded_csv = params[:file]	
    csv_text = File.read(uploaded_csv)

    csv = CSV.parse(csv_text, :headers => true)
    csv.each do |row|
    row_hash = row.to_hash
    m = Genealogy.new
    m.name = row_hash["1"]
    m.town = row_hash["2"]
    m.dt = row_hash["3"]
    m.county = row_hash["4"]
    m.emi = row_hash["5"]
    m.save!
    end
  end  
end
