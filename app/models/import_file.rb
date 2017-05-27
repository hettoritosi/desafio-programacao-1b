class ImportFile < ActiveRecord::Base
    mount_uploader :attachment, AttachmentUploader

    validates_presence_of :attachment
end
