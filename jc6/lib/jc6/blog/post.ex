# the scheme
defmodule Jc6.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :title, :string
    field :slug, :string
    field :content, :string
    field :markdown, :string
    field :excerpt, :string
    field :status, :string, default: "draft" # draft, published, archived
    field :published_at, :utc_datetime
    field :featured, :boolean, default: false

    belongs_to :author, Jc6.Accounts.User

    timestamps()
  end

  def changeset(post, attrs) do
    post
    |> cast(attrs, [:title, :content, :markdown, :excerpt, :status, :published_at, :featured, :author])
    |> validate_required([:title, :markdown, :author])
    |> validate_inclusion(:status, ["draft", "published", "archived"])
    |> generate_content()
    |> generate_slug()
    |> unique_constraint(:slug)
  end

  defp generate_content(changeset) do
    case get_change(changeset, :markdown) do
      nil -> changeset
      markdown ->
        {:ok,  content} = markdown
                  |> MDEx.to_html
        put_change(changeset, :content, content)
    end
  end

  defp generate_slug(changeset) do
    case get_change(changeset, :title) do
      nil -> changeset
      title ->
        slug = title
               |> String.downcase()
               |> String.replace(~r/[^a-z0-9\s-]/, "")
               |> String.replace(~r/\s+/, "-")
               |> String.trim("-")
        put_change(changeset, :slug, slug)
    end
  end
end
