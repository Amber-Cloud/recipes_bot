# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetIngredientInformation200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :original,
    :originalName,
    :name,
    :nameClean,
    :amount,
    :unit,
    :unitShort,
    :unitLong,
    :possibleUnits,
    :estimatedCost,
    :consistency,
    :shoppingListUnits,
    :aisle,
    :image,
    :meta,
    :nutrition,
    :categoryPath
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :original => String.t(),
          :originalName => String.t(),
          :name => String.t(),
          :nameClean => String.t(),
          :amount => float(),
          :unit => String.t(),
          :unitShort => String.t(),
          :unitLong => String.t(),
          :possibleUnits => [String.t()],
          :estimatedCost =>
            RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerEstimatedCost.t(),
          :consistency => String.t(),
          :shoppingListUnits => [String.t()],
          :aisle => String.t(),
          :image => String.t(),
          :meta => [map()],
          :nutrition =>
            RecipesBot.SpoonacularClient.Model.GetIngredientInformation200ResponseNutrition.t(),
          :categoryPath => [String.t()]
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.GetIngredientInformation200Response do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :estimatedCost,
      :struct,
      RecipesBot.SpoonacularClient.Model.ParseIngredients200ResponseInnerEstimatedCost,
      options
    )
    |> deserialize(
      :nutrition,
      :struct,
      RecipesBot.SpoonacularClient.Model.GetIngredientInformation200ResponseNutrition,
      options
    )
  end
end
