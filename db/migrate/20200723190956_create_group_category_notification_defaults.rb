class CreateGroupCategoryNotificationDefaults < ActiveRecord::Migration[6.0]
  def change
    create_table :group_category_notification_defaults do |t|
      t.integer :group_id, null: false
      t.integer :category_id, null: false
      t.integer :notification_level, null: false
    end

    add_index :group_category_notification_defaults,
      [:group_id, :category_id],
      unique: true,
      name: :idx_group_category_notification_defaults_unique
  end
end
