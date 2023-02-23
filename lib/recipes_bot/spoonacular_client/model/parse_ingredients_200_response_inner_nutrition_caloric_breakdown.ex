# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerNutritionCaloricBreakdown do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :percentProtein,
    :percentFat,
    :percentCarbs
  ]

  @type t :: %__MODULE__{
          :percentProtein => float(),
          :percentFat => float(),
          :percentCarbs => float()
        }
end

defimpl Poison.Decoder,
  for:
    RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerNutritionCaloricBreakdown do
  def decode(value, _options) do
    value
  end
end
