defmodule LmHttp.Payload do
  @moduledoc """
  Payload content filter functions.
  """

  def to_keyword(payload) when is_map(payload) do
    Keyword.new(payload, fn {k,v} -> {String.to_existing_atom(k), v} end)
  end

  @spec remove_nils(map()) :: map()
  def remove_nils(payload) when is_map(payload) do
    Map.reject(payload, &map_reject_nil/1)
  end

  def remove_nils(payload), do: payload

  defp map_reject_nil({_key, val}) when is_nil(val), do: true
  defp map_reject_nil({_, _}), do: false
end
