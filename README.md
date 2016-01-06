# PhoenixMim

Thank you Mickaël Rémond:

When I was impressed from [`Mickaël Rémond's blog`](https://blog.process-one.net/embedding-ejabberd-into-an-elixir-phoenix-web-application/)
I decided to make it to work for MongooseIM + Phoenix. After several trial and error I have done it to work.
This is a very simple prototype for embedding MongooseIM into Phoenix.
It is responsible to you how to use it.

Prerequisites:

  1. erlang r17
  2. [`kiex`](https://github.com/taylor/kiex): Elixir version manager
  3. elixir 1.1.1 (kiex install 1.1.1)
  4. rebar

Dependencies:

  1. mongooseim (branch phoenix-integration)
  2. Refer to mim.exs

To start this app:

  1. git clone https://github.com/kevinblade/phoenix-mim.git
  2. cd phoenix-mim
  3. mix deps.get
  4. mkdir etc
  5. cd etc
  6. vi ejabberd.cfg
  7. iex --name master@localhost --cookie cookie@localhost mix -S phoenix.server
  8. iex> :ejabberd_auth.try_register("username", "localhost", "password")

Now you can visit [`localhost:4000/ejabberd`](http://localhost:4000/ejabberd) from your browser.
And then you will be able to see online users on your browser.
