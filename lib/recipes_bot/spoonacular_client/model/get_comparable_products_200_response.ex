# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetComparableProducts200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :comparableProducts
  ]

  @type t :: %__MODULE__{
          :comparableProducts =>
            RecipesBot.SpoonacularClient.Model.GetComparableProducts200ResponseComparableProducts.t()
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.GetComparableProducts200Response do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :comparableProducts,
      :struct,
      RecipesBot.SpoonacularClient.Model.GetComparableProducts200ResponseComparableProducts,
      options
    )
  end
end
