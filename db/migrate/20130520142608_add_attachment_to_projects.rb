class AddAttachmentToProjects < ActiveRecord::Migration
  def self.up
    add_attachment :projects, :attachment
  end

  def self.down
    remove_attachment :projects, :attachment
  end
end
