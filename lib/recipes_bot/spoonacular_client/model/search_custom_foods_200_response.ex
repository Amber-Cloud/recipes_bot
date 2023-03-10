# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.SearchCustomFoods200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :customFoods,
    :type,
    :offset,
    :number
  ]

  @type t :: %__MODULE__{
          :customFoods => [
            RecipesBot.SpoonacularClient.Model.SearchCustomFoods200ResponseCustomFoodsInner.t()
          ],
          :type => String.t(),
          :offset => integer(),
          :number => integer()
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.SearchCustomFoods200Response do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :customFoods,
      :list,
      RecipesBot.SpoonacularClient.Model.SearchCustomFoods200ResponseCustomFoodsInner,
      options
    )
  end
end
