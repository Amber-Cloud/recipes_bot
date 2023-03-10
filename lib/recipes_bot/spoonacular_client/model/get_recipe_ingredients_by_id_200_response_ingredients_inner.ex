# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetRecipeIngredientsById200ResponseIngredientsInner do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :amount,
    :image,
    :name
  ]

  @type t :: %__MODULE__{
          :amount =>
            RecipesBot.SpoonacularClient.Model.GetRecipePriceBreakdownById200ResponseIngredientsInnerAmount.t()
            | nil,
          :image => String.t(),
          :name => String.t()
        }
end

defimpl Poison.Decoder,
  for: RecipesBot.SpoonacularClient.Model.GetRecipeIngredientsById200ResponseIngredientsInner do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :amount,
      :struct,
      RecipesBot.SpoonacularClient.Model.GetRecipePriceBreakdownById200ResponseIngredientsInnerAmount,
      options
    )
  end
end
