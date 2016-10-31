use Mix.Config

config :notes,
  ecto_repos: [Notes.Repo]

config :ueberauth, Ueberauth,
  providers: [
    github: {Ueberauth.Strategy.Github, []}
  ]

config :ueberauth, Ueberauth.Strategy.Github.OAuth,
  client_id: "96ec562d8eb479ada574",
  client_secret: "768fa8b23485b73c8ac0c176768daf11b2aa5627"

config :notes, Notes.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "n/q5UggzjPM/EPyE/FsnTxj4C+/VAJo322mqOYiQwAHytmVzRh+D/ITHvAW9CdpU",
  render_errors: [view: Notes.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Notes.PubSub,
           adapter: Phoenix.PubSub.PG2]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

import_config "#{Mix.env}.exs"
