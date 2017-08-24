class CreateLabelsMessages < ActiveRecord::Migration[5.1]
  def change
    create_table :labels_messages, id: false do |t|
      t.belongs_to :label, index: true, null: false
      t.belongs_to :message, index: true, null: false
    end

    add_foreign_key :labels_messages, :labels
    add_foreign_key :labels_messages, :messages
  end
end
