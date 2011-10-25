class CreateAttachments < ActiveRecord::Migration
  def change
    create_table :attachments do |t|
      t.string :title
      t.binary :payload

      t.timestamps
    end
  end
end
