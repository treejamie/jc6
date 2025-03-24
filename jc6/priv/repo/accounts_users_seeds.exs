alias Jc6.Repo
alias Jc6.Accounts.User

#user = %User
u = %{email: "foo@bar.com", password: "foobarbaz123" }
cs = User.registration_changeset(%User{}, u)
Repo.insert!(cs)


# YOU WERE ADDING A USER SEED
