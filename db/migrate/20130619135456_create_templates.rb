class CreateTemplates < ActiveRecord::Migration
  def change
    create_table :templates do |t|
      t.string :name
      t.string :subject
      t.string :template_type
      t.text :body
      t.text :text_body
      t.string :from
      t.integer :user_id

      t.timestamps
    end
  end
end
