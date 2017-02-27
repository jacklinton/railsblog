class User < ApplicationRecord
	has_secure_password
	validates :email, uniqueness: true, on: :create, presence: true #possible to update with duplicate value
	validates :user_name, uniqueness: true, on: :create, presence: true
	has_attached_file :avatar,
					  styles: { medium: "300x300>", thumb: "100x100>" },
					  default_url: "/images/:style/missing.png",
					  :storage => :s3
					  :s3_region: ENV["AWS_REGION"],
					  :s3_credentials => Proc.new{|a| a.instance.s3_credentials}
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	
	def s3_credentials
		{:bucket => "railsblogbucket", :access_key_id => ENV["AWS_ACCESS_KEY_ID"], :secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"]}
	end
end
