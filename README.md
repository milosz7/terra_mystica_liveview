# Terra Mystica

## Environmental variables setup

The project uses `PostgreSQL` database engine. In order to connect with the
database the user has to do the following:

- Edit the `config/dev.exs` database config, below is an example configuration

```
# Database dev config
config :terra_mystica, TerraMystica.Repo,
  username: "YOUR_POSTGRES_USERNAME", 
  password: "YOUR_PASSWORD",
  hostname: "localhost",
  database: "terra_mystica_dev",
  ...
```

- run `mix ecto.create` to have the database created

## Start up

To start your Phoenix server:

- Run `mix setup` to install and setup dependencies
- Start Phoenix endpoint with `mix phx.server` or inside IEx with
  `iex -S mix phx.server`

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.

Ready to run in production? Please
[check our deployment guides](https://hexdocs.pm/phoenix/deployment.html).

## Learn more

- Official website: https://www.phoenixframework.org/
- Guides: https://hexdocs.pm/phoenix/overview.html
- Docs: https://hexdocs.pm/phoenix
- Forum: https://elixirforum.com/c/phoenix-forum
- Source: https://github.com/phoenixframework/phoenix
