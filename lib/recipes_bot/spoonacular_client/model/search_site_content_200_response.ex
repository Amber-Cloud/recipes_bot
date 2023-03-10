# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Model.SearchSiteContent200Response do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Articles,
    :"Grocery Products",
    :"Menu Items",
    :Recipes
  ]

  @type t :: %__MODULE__{
          :Articles => [
            RecipesBot.SpoonacularClient.Model.SearchSiteContent200ResponseArticlesInner.t()
          ],
          :"Grocery Products" => [
            RecipesBot.SpoonacularClient.Model.SearchSiteContent200ResponseGroceryProductsInner.t()
          ],
          :"Menu Items" => [
            RecipesBot.SpoonacularClient.Model.SearchSiteContent200ResponseGroceryProductsInner.t()
          ],
          :Recipes => [
            RecipesBot.SpoonacularClient.Model.SearchSiteContent200ResponseGroceryProductsInner.t()
          ]
        }
end

defimpl Poison.Decoder, for: RecipesBot.SpoonacularClient.Model.SearchSiteContent200Response do
  import RecipesBot.SpoonacularClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(
      :Articles,
      :list,
      RecipesBot.SpoonacularClient.Model.SearchSiteContent200ResponseArticlesInner,
      options
    )
    |> deserialize(
      :"Grocery Products",
      :list,
      RecipesBot.SpoonacularClient.Model.SearchSiteContent200ResponseGroceryProductsInner,
      options
    )
    |> deserialize(
      :"Menu Items",
      :list,
      RecipesBot.SpoonacularClient.Model.SearchSiteContent200ResponseGroceryProductsInner,
      options
    )
    |> deserialize(
      :Recipes,
      :list,
      RecipesBot.SpoonacularClient.Model.SearchSiteContent200ResponseGroceryProductsInner,
      options
    )
  end
end
