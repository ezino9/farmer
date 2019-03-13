class AddAttachmentCoverpictureToBlogs < ActiveRecord::Migration[5.2]
  def self.up
    change_table :blogs do |t|
      t.attachment :coverpicture
    end
  end

  def self.down
    remove_attachment :blogs, :coverpicture
  end
end
