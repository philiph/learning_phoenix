# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :learning_phoenix,
  ecto_repos: [LearningPhoenix.Repo]

# Configures the endpoint
config :learning_phoenix, LearningPhoenixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "zNBFRGp2lae1mgntLMU4IZ1UEoyWgfvATw4YuLcfP3LNTEWd1XULk07DEuRgI5OR",
  render_errors: [view: LearningPhoenixWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: LearningPhoenix.PubSub,
  live_view: [signing_salt: "GP4bCA67"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
