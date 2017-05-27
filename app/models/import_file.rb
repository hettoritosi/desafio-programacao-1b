class ImportFile < ActiveRecord::Base
    mount_uploader :attachment, AttachmentUploader
    validates :attachment, presence: true
end
