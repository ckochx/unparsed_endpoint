# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :unparsed_endpoint,
  ecto_repos: [UnparsedEndpoint.Repo]

# Configures the endpoint
config :unparsed_endpoint, UnparsedEndpoint.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "Wxq+174oEq/H4STwPtuchZPccLImySjjWliXPxXczkPT7QwHNevmTXoGJnrE7VWI",
  render_errors: [view: UnparsedEndpoint.ErrorView, accepts: ~w(json)],
  pubsub: [name: UnparsedEndpoint.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
