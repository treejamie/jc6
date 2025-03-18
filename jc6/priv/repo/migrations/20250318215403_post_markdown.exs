defmodule Jc6.Repo.Migrations.PostMarkdowm do
  use Ecto.Migration

  def change do
    alter table(:posts) do
      add :markdown, :text, null: false
    end

  end
end
