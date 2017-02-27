class User < ApplicationRecord
	has_secure_password
	validates :email, uniqueness: true, on: :create, presence: true #possible to update with duplicate value
	validates :user_name, uniqueness: true, on: :create, presence: true
	has_attached_file :avatar,
					  styles: { medium: "300x300>", thumb: "100x100>" },
					  default_url: "/images/:style/missing.png",
					  :storage => :s3
					  :s3_region: ENV["us-east-1"],
					  :s3_credentials => Proc.new{|a| a.instance.s3_credentials}
	validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
	
	def s3_credentials
		{:bucket => "railsblogbucket", :access_key_id => "AKIAI44BETQHEEFUWN4A", :secret_access_key => "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"}
	end
end
