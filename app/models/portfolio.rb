class Portfolio < ActiveRecord::Base
  belongs_to :user
  default_scope -> { order('created_at DESC') }
  validates :user_id, presence: true



		has_attached_file :image, styles: {
		portfolio: "200X200>"
	}
end
