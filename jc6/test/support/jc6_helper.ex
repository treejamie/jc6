defmodule Jc6.Test.Jc6Helper do
  alias Jc6.Blog.Post
  alias Jc6.Accounts.User
  alias Jc6.Repo


  def make_post(), do: make_post(%{}, make_user())
  def make_post(params), do: make_post(params, make_user())
  def make_post(params, user) do

    # make the defaults
    params = Map.merge(%{
      title: "A Test Post",
      markdown: "Welcome\n* test one\n* test two",
      excerpt: "something testy",
      author_id: user.id
    }, params)

    # now make a changeset and save it
    Post.changeset(%Post{}, params)
    |> Repo.insert!

  end

  def make_user(params \\ %{}) do
    # first the params
    params = Map.merge(%{
      email: "foo@bar.baz",
      password: "foobarbaz123!"
    }, params)

    # now changeset and save it
    User.registration_changeset(%User{}, params)
    |> Repo.insert!
  end

end
