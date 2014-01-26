class Portfolio < ActiveRecord::Base

		has_attached_file :image, styles: {
		portfolio: "200X200>"
	}
end
