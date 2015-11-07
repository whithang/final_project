class RemoveFbUserFromProfiles < ActiveRecord::Migration
  def change
    remove_column :profiles, :fb_user_id, :string
  end
end
