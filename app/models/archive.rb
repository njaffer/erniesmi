class Archive < ApplicationRecord
	paginates_per 30
	max_paginates_per 100
	max_pages 500
end
