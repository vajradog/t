class Portfolio < ActiveRecord::Base
  belongs_to :user
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  default_scope -> { order('created_at DESC') }
  # validates :user_id, presence: true
		has_attached_file :image, styles: {
		portfolio: "300X300>"
	}

end

