# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Jc6.Repo.insert!(%Jc6.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
# seed the users first
IO.puts("🌱 Seeding user accounts first...")
Code.require_file("accounts_users_seeds.exs", __DIR__)

# priv/repo/seeds.exs
IO.puts("🌱 Seeding blog posts...")
Code.require_file("posts_seeds.exs", __DIR__)
