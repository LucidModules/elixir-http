defmodule LmHttp.ClientAdapterMock do
  @moduledoc """
  This is a Client Mock for testing purposes. It returns provided parameters as the test verification.
  """

  @behaviour LmHttp.ClientAdapter

  @type mocked_response :: %{mocked: {}}

  @spec request(ClientApi.serialized_request()) :: mocked_response
  @doc """
  Mocked generic response. Returns provided parameters as test verification
  """
  @impl true
  def request(request) do
    %{mocked: request}
  end
end
