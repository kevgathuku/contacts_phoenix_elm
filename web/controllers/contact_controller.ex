defmodule ContactsPhoenixElm.ContactController do
  use ContactsPhoenixElm.Web, :controller

  alias ContactsPhoenixElm.Contact

  def index(conn, params) do
    page = Contact
      |> order_by(:first_name)
      |> Repo.paginate(params)

    render conn, page: page
  end
end
