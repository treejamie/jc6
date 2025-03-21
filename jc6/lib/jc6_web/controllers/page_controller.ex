defmodule Jc6Web.PageController do
  use Jc6Web, :controller
  alias Jc6.Blog.Posts

  def home(conn, _params) do
    # gert the posts
    posts = Posts.published()

    # and done
    render(conn, :home, layout: false, posts: posts)
  end

end
