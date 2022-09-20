AWS.config(
  :access_key_id => ENV['AWS_ACCESS_KEY_ID'],
  :secret_access_key => ENV['AWS_SECRET_ACCESS_KEY']
  #:endpoint =>'https://s3.eu-central-1.amazonaws.com'
)

S3_BUCKET =  AWS::S3.new.buckets[ENV['S3_BUCKET']]