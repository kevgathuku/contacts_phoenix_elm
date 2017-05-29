defmodule ContactsPhoenixElm.ContactView do
  use ContactsPhoenixElm.Web, :view

  def render("index.json", %{page: page}), do: page
end
