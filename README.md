# PhoenixMim

Thank you Mickaël Rémond:

When I was impressed from [`Mickaël Rémond's blog`](https://blog.process-one.net/embedding-ejabberd-into-an-elixir-phoenix-web-application/)
I decided to make it to work for MongooseIM + Phoenix. After several trial and error I have done it to work.
This is a very simple prototype for embedding MongooseIM into Phoenix.
It is responsible to you how to use it.

To start this app:

  1. git clone https://github.com/kevinblade/phoenix-mim.git
  2. cd phoenix-mim
  3. mix deps.get
  3. iex --name master@localhost --cookie cookie@localhost mix -S phoenix.server
  4. iex> :ejabberd_auth.try_register("username", "localhost", "password")

Now you can visit [`localhost:4000/ejabberd`](http://localhost:4000/ejabberd) from your browser.
And then you will be able to see online users on your browser.
