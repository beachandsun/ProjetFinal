Amazon.config.update({
  region: 'eu-west-3',
  credentials: Amazon::Credentials.new(ENV['AMAZON_ACCESS_KEY_ID'], ENV['AMAZON_SECRET_ACCESS_KEY']),
})

S3_BUCKET = Amazon::S3::Resource.new.bucket(ENV['S3_BUCKET_NAME'])  