# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Chatroom.Repo.insert!(%Chatroom.SomeModel{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
Chatroom.Repo.delete_all Chatroom.User

Chatroom.User.changeset(%Chatroom.User{}, %{name: "test", email: "test@example.com", password: "password", password_confirmation: "password"})
|> Chatroom.Repo.insert!