# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.GetRecipeEquipmentById200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :equipment
  ]

  @type t :: %__MODULE__{
          :equipment => [
            RecipesBot.SpoonacularClient.Model.GetRecipeEquipmentById200ResponseEquipmentInner.t()
          ]
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.GetRecipeEquipmentById200Response do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :equipment,
      :list,
      RecipesBot.SpoonacularClient.Model.GetRecipeEquipmentById200ResponseEquipmentInner,
      options
    )
  end
end
