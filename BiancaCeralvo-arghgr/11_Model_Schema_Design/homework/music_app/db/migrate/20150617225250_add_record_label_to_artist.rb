class AddRecordLabelToArtist < ActiveRecord::Migration
  def change
    add_reference :artists, :record_label, index: true
    add_foreign_key :artists, :record_labels
  end
end
