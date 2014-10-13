AWS.config(access_key_id:     Rails.application.secrets.s3_access_key_id,
           secret_access_key: Rails.application.secrets.s3_secret_access_key )

S3_BUCKET = AWS::S3.new.buckets[Rails.application.secrets.s3_bucket_name]
