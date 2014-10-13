class UploadController < ApplicationController
  def s3
    # REFERENCE –>
    # o = S3_BUCKET.objects.create('myfilename3', 'yadiyadiyada3')
    # o.acl = :public_read
    # o.public_url

    o = S3_BUCKET.objects.create(params[:file].original_filename.to_s, params[:file].read)
    o.acl = :public_read
    @public_url = o.public_url
    @target_field_id = params[:target_field_id]
  end
end
