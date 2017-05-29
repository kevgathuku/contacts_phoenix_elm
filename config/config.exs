# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :contacts_phoenix_elm,
  ecto_repos: [ContactsPhoenixElm.Repo]

# Configures the endpoint
config :contacts_phoenix_elm, ContactsPhoenixElm.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "veTpAdXXYkGRck9hhoOnNzQMAL5hyjq+BCC2XPK4qmoVwG5WoIdeUDQfoLE2uC6D",
  render_errors: [view: ContactsPhoenixElm.ErrorView, accepts: ~w(html json)],
  pubsub: [name: ContactsPhoenixElm.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
