# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetRecipePriceBreakdownById200ResponseIngredientsInnerAmount do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :metric,
    :us
  ]

  @type t :: %__MODULE__{
          :metric =>
            RecipesBot.SpoonacularClient.Model.GetRecipePriceBreakdownById200ResponseIngredientsInnerAmountMetric.t(),
          :us =>
            RecipesBot.SpoonacularClient.Model.GetRecipePriceBreakdownById200ResponseIngredientsInnerAmountMetric.t()
        }
end

defimpl Poison.Decoder,
  for:
    RecipesBot.SpoonacularClient.Model.GetRecipePriceBreakdownById200ResponseIngredientsInnerAmount do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :metric,
      :struct,
      RecipesBot.SpoonacularClient.Model.GetRecipePriceBreakdownById200ResponseIngredientsInnerAmountMetric,
      options
    )
    |> deserialize(
      :us,
      :struct,
      RecipesBot.SpoonacularClient.Model.GetRecipePriceBreakdownById200ResponseIngredientsInnerAmountMetric,
      options
    )
  end
end
