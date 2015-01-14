class UploadController < ApplicationController
  def s3
    # ==============================================================
    # REFERENCE                                                    |
    # ==============================================================
    # o = S3_BUCKET.objects.create('myfilename3', 'yadiyadiyada3') |
    # o.acl = :public_read                                         |
    # o.public_url                                                 |
    # ==============================================================


    # create and save the uploaded file in Amazon S3:
    o = S3_BUCKET.objects.create(
      SecureRandom.uuid + params[:file].original_filename.to_s, #=> (unique) file name
      params[:file].read                                        #=> file itself
    )

    # make it publicly viewable:
    o.acl = :public_read

    # return the following info for view (s3.js.erb) to consume!
    @public_url = o.public_url
    @target_field_id = params[:target_field_id]
  end
end
