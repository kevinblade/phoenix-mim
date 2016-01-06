ExUnit.start

Mix.Task.run "ecto.create", ~w(-r PhoenixMim.Repo --quiet)
Mix.Task.run "ecto.migrate", ~w(-r PhoenixMim.Repo --quiet)
Ecto.Adapters.SQL.begin_test_transaction(PhoenixMim.Repo)

