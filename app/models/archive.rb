class Archive < ApplicationRecord
	paginates_per 15
	max_paginates_per 100
	max_pages 100
end
