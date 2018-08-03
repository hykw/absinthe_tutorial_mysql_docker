use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :blog, BlogWeb.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :blog, Blog.Repo,
  adapter: Ecto.Adapters.MySQL,
  username: "mysqluser",
  password: "PASSWORD",
  database: "absinthe_tutorial_test",
  hostname: "absinthe_tutorial_mysql",
  pool: Ecto.Adapters.SQL.Sandbox
