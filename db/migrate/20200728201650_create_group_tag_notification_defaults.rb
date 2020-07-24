class CreateGroupTagNotificationDefaults < ActiveRecord::Migration[6.0]
  def change
    create_table :group_tag_notification_defaults do |t|
      t.integer :group_id, null: false
      t.integer :tag_id, null: false
      t.integer :notification_level, null: false
    end

    add_index :group_tag_notification_defaults,
      [:group_id, :tag_id],
      unique: true,
      name: :idx_group_tag_notification_defaults_unique
  end
end
