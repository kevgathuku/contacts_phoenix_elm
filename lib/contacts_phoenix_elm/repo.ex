defmodule ContactsPhoenixElm.Repo do
  use Ecto.Repo, otp_app: :contacts_phoenix_elm
  use Scrivener, page_size: 10
end
