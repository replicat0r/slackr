use Mix.Config

# For development, we disable any cache and enable
# debugging and code reloading.
#
# The watchers configuration can be used to run external
# watchers to your application. For example, we use it
# with brunch.io to recompile .js and .css sources.
config :slackr, Slackr.Endpoint,
  http: [port: 8080],
  debug_errors: true,
  code_reloader: true,
  check_origin: false,
  watchers: []


# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Set a higher stacktrace during development. Avoid configuring such
# in production as building large stacktraces may be expensive.
config :phoenix, :stacktrace_depth, 20

# Configure your database
config :slackr, Slackr.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "slackr_dev",
  hostname: "localhost",
  template: "template0",
  pool_size: 10
