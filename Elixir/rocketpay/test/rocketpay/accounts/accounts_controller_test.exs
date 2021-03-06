defmodule RocketpayWeb.AccountsControllerTest do

  use RocketpayWeb.ConnCase, async: true

  alias Rocketpay.{Account, User}

  describe "deposit/2" do
    setup %{conn: conn} do
      params = %{
        name: "Gabrielll",
        password: "123654",
        nickname: "gandrinha",
        email: "gandrinha@hotmail.com",
        age: 22
      }

      {:ok, %User{account: %Account{id: account_id}}} = Rocketpay.create_user(params)

      conn = put_req_header(conn, "authorization", "Basic YmFuYW5hOm5hbmljYTEyMw==")

      {:ok, conn: conn, account_id: account_id}
    end

    test "When all params are valid, make deposit", %{conn: conn, account_id: account_id} do
      params = %{"value" => "50.21"}

      response =
        conn
        |> post(Routes.accounts_path(conn, :deposit, account_id, params))
        |> json_response(:ok)

      assert %{"account" => %{"balance" => "50.21", "id" => _id}, "message" => "Balance changed successfully"} = response
    end

    test "When there are invalid params, return an error", %{conn: conn, account_id: account_id} do
      params = %{"value" => "xx1"}

      response =
        conn
        |> post(Routes.accounts_path(conn, :deposit, account_id, params))
        |> json_response(:bad_request)

      expected_response = %{"message" => "Invalid deposit value!"}

      assert expected_response == response
    end
  end
end
