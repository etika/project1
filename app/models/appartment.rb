class Appartment < ActiveRecord::Base

has_attached_file :photo, :styles => { :medium => "300x300>", :thumb => "100x100>" },
                  :url  => "/assets/appartment/:id/:style/:basename.:extension",
                  :path => ":rails_root/public/assets/appartment/:id/:style/:basename.:extension"
      geocoded_by :location

validates_attachment_presence :photo
validates_attachment_size :photo, :less_than => 5.megabytes
validates_attachment_content_type :photo, :content_type => ['image/jpeg', 'image/png']
after_validation :geocode
end
