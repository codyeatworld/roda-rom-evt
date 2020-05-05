ROM::SQL.migration do
  up do
    run 'CREATE EXTENSION "uuid-ossp"'

    create_table(:products) do
      column :id, :uuid, default: Sequel.function(:uuid_generate_v4), primary_key: true
      column :name, String, null: false

      index :id, unique: true
    end
  end

  down do
    drop_table(:products)
    run 'DROP EXTENSION "uuid-ossp"'
  end
end
