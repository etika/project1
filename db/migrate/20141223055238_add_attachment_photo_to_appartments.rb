class AddAttachmentPhotoToAppartments < ActiveRecord::Migration
  def self.up
    change_table :appartments do |t|
      t.attachment :photo
    end
  end

  def self.down
    remove_attachment :appartments, :photo
  end
end
