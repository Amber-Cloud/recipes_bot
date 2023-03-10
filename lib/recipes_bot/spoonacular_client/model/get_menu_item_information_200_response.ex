# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetMenuItemInformation200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :id,
    :title,
    :restaurantChain,
    :nutrition,
    :badges,
    :breadcrumbs,
    :generatedText,
    :imageType,
    :likes,
    :servings,
    :price,
    :spoonacularScore
  ]

  @type t :: %__MODULE__{
          :id => integer(),
          :title => String.t(),
          :restaurantChain => String.t(),
          :nutrition =>
            RecipesBot.SpoonacularClient.Model.SearchGroceryProductsByUpc200ResponseNutrition.t(),
          :badges => [String.t()],
          :breadcrumbs => [String.t()],
          :generatedText => String.t() | nil,
          :imageType => String.t(),
          :likes => float(),
          :servings =>
            RecipesBot.SpoonacularClient.Model.SearchGroceryProductsByUpc200ResponseServings.t(),
          :price => float() | nil,
          :spoonacularScore => float() | nil
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.GetMenuItemInformation200Response do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :nutrition,
      :struct,
      RecipesBot.SpoonacularClient.Model.SearchGroceryProductsByUpc200ResponseNutrition,
      options
    )
    |> deserialize(
      :servings,
      :struct,
      RecipesBot.SpoonacularClient.Model.SearchGroceryProductsByUpc200ResponseServings,
      options
    )
  end
end
