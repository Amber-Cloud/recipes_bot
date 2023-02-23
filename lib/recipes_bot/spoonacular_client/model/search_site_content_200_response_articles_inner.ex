# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.SearchSiteContent200ResponseArticlesInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :dataPoints,
    :image,
    :link,
    :name
  ]

  @type t :: %__MODULE__{
          :dataPoints => [AnyType] | nil,
          :image => String.t(),
          :link => String.t(),
          :name => String.t()
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.SearchSiteContent200ResponseArticlesInner do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:dataPoints, :list, RecipesBot.SpoonacularClient.Model.AnyType, options)
  end
end