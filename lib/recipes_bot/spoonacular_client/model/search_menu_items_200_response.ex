# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.SearchMenuItems200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :menuItems,
    :totalMenuItems,
    :type,
    :offset,
    :number
  ]

  @type t :: %__MODULE__{
          :menuItems => [
            RecipesBot.SpoonacularClient.Model.SearchMenuItems200ResponseMenuItemsInner.t()
          ],
          :totalMenuItems => integer(),
          :type => String.t(),
          :offset => integer(),
          :number => integer()
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.SearchMenuItems200Response do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :menuItems,
      :list,
      RecipesBot.SpoonacularClient.Model.SearchMenuItems200ResponseMenuItemsInner,
      options
    )
  end
end
