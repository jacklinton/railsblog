class Post < ApplicationRecord
    has_attached_file :image,
					  styles: { medium: "300x300>", thumb: "100x100>" },
					  default_url: "/images/:style/missing.png",
					  :storage => :s3,
					  :s3_credentials => Proc.new{|a| a.instance.s3_credentials },
					  s3_region: ENV["AWS_REGION"]
	validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
	
	def s3_credentials
		{:bucket => "railsblogbucket", :access_key_id => ENV["AWS_ACCESS_KEY_ID"], :secret_access_key => ENV["AWS_SECRET_ACCESS_KEY"]}
	end
end
