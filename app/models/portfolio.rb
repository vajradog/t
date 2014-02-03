class Portfolio < ActiveRecord::Base
  belongs_to :user
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\Z/

  default_scope -> { order('created_at DESC') }
  # validates :user_id, presence: true
		has_attached_file :image, 
		:storage => :s3,
		:url => "s3_domain_url",
		:s3_credentials => {
		:bucket => ENV['S3_BUCKET_NAME'],
        :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
        :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
  }


end

