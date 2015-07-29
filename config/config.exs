# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :exrm_test, ExrmTest.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "gARkCyjjPS0yzog5SEnbd32aTAcitc9/HTFPKZWr2WYZ12sa+6/6pldauSdyG+q6",
  render_errors: [default_format: "html"],
  pubsub: [name: ExrmTest.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# This line was automatically added by ansible-elixir-stack setup script
if System.get_env("SERVER") do
  config :phoenix, :serve_endpoints, true
end
