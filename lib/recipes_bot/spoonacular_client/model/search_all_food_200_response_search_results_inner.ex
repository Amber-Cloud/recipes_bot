# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.SearchAllFood200ResponseSearchResultsInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :name,
    :totalResults,
    :results
  ]

  @type t :: %__MODULE__{
          :name => String.t(),
          :totalResults => integer(),
          :results =>
            [
              RecipesBot.SpoonacularClient.Model.SearchAllFood200ResponseSearchResultsInnerResultsInner.t()
            ]
            | nil
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.SearchAllFood200ResponseSearchResultsInner do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :results,
      :list,
      RecipesBot.SpoonacularClient.Model.SearchAllFood200ResponseSearchResultsInnerResultsInner,
      options
    )
  end
end
