{application,rocketpay,
    [{compile_env,
         [{rocketpay,
              [basic_auth],
              {ok,[{username,<<"banana">>},{password,<<"nanica123">>}]}}]},
     {applications,
         [kernel,stdlib,elixir,logger,runtime_tools,phoenix,phoenix_ecto,
          ecto_sql,postgrex,phoenix_live_dashboard,telemetry_metrics,
          telemetry_poller,gettext,jason,plug_cowboy,pbkdf2_elixir,decimal]},
     {description,"rocketpay"},
     {modules,
         ['Elixir.Rocketpay','Elixir.Rocketpay.Account',
          'Elixir.Rocketpay.Account.Deposit',
          'Elixir.Rocketpay.Account.Operation',
          'Elixir.Rocketpay.Account.Transaction',
          'Elixir.Rocketpay.Account.Transaction.Response',
          'Elixir.Rocketpay.Account.Withdraw','Elixir.Rocketpay.Application',
          'Elixir.Rocketpay.Numbers','Elixir.Rocketpay.Repo',
          'Elixir.Rocketpay.User','Elixir.Rocketpay.Users.Create',
          'Elixir.RocketpayWeb','Elixir.RocketpayWeb.AccountsController',
          'Elixir.RocketpayWeb.AccountsView','Elixir.RocketpayWeb.Endpoint',
          'Elixir.RocketpayWeb.ErrorHelpers','Elixir.RocketpayWeb.ErrorView',
          'Elixir.RocketpayWeb.FallbackController',
          'Elixir.RocketpayWeb.Gettext','Elixir.RocketpayWeb.Router',
          'Elixir.RocketpayWeb.Router.Helpers',
          'Elixir.RocketpayWeb.Telemetry','Elixir.RocketpayWeb.UserSocket',
          'Elixir.RocketpayWeb.UsersController',
          'Elixir.RocketpayWeb.UsersView',
          'Elixir.RocketpayWeb.WelcomeController']},
     {registered,[]},
     {vsn,"0.1.0"},
     {mod,{'Elixir.Rocketpay.Application',[]}}]}.