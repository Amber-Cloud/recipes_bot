# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetRecipePriceBreakdownById200ResponseIngredientsInnerAmountMetric do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :unit,
    :value
  ]

  @type t :: %__MODULE__{
          :unit => String.t(),
          :value => float()
        }
end

defimpl Poison.Decoder,
  for:
    RecipesBot.SpoonacularClient.Model.GetRecipePriceBreakdownById200ResponseIngredientsInnerAmountMetric do
  def decode(value, _options) do
    value
  end
end
