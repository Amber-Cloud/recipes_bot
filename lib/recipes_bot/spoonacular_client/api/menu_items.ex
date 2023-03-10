# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule RecipesBot.SpoonacularClient.Api.MenuItems do
  @moduledoc """
  API calls for all endpoints tagged `MenuItems`.
  """

  alias RecipesBot.SpoonacularClient.Connection
  import RecipesBot.SpoonacularClient.RequestBuilder

  @doc """
  Autocomplete Menu Item Search
  Generate suggestions for menu items based on a (partial) query. The matches will be found by looking in the title only.

  ## Parameters

  - connection (RecipesBot.SpoonacularClient.Connection): Connection to server
  - query (String.t): The (partial) search query.
  - opts (KeywordList): [optional] Optional parameters
    - :number (float()): The number of results to return (between 1 and 25).
  ## Returns

  {:ok, RecipesBot.SpoonacularClient.Model.AutocompleteMenuItemSearch200Response.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec autocomplete_menu_item_search(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil}
          | {:ok, RecipesBot.SpoonacularClient.Model.AutocompleteMenuItemSearch200Response.t()}
          | {:error, Tesla.Env.t()}
  def autocomplete_menu_item_search(connection, query, opts \\ []) do
    optional_params = %{
      :number => :query
    }

    %{}
    |> method(:get)
    |> url("/food/menuItems/suggest")
    |> add_param(:query, :query, query)
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %RecipesBot.SpoonacularClient.Model.AutocompleteMenuItemSearch200Response{}},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Get Menu Item Information
  Use a menu item id to get all available information about a menu item, such as nutrition.

  ## Parameters

  - connection (RecipesBot.SpoonacularClient.Connection): Connection to server
  - id (integer()): The item's id.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, RecipesBot.SpoonacularClient.Model.GetMenuItemInformation200Response.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_menu_item_information(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil}
          | {:ok, RecipesBot.SpoonacularClient.Model.GetMenuItemInformation200Response.t()}
          | {:error, Tesla.Env.t()}
  def get_menu_item_information(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/food/menuItems/#{id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %RecipesBot.SpoonacularClient.Model.GetMenuItemInformation200Response{}},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Menu Item Nutrition by ID Image
  Visualize a menu item's nutritional information as HTML including CSS.

  ## Parameters

  - connection (RecipesBot.SpoonacularClient.Connection): Connection to server
  - id (float()): The menu item id.
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, map()} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec menu_item_nutrition_by_id_image(Tesla.Env.client(), float(), keyword()) ::
          {:ok, nil} | {:ok, Map.t()} | {:error, Tesla.Env.t()}
  def menu_item_nutrition_by_id_image(connection, id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/food/menuItems/#{id}/nutritionWidget.png")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %{}},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Menu Item Nutrition Label Image
  Visualize a menu item's nutritional label information as an image.

  ## Parameters

  - connection (RecipesBot.SpoonacularClient.Connection): Connection to server
  - id (float()): The menu item id.
  - opts (KeywordList): [optional] Optional parameters
    - :show_optional_nutrients (boolean()): Whether to show optional nutrients.
    - :show_zero_values (boolean()): Whether to show zero values.
    - :show_ingredients (boolean()): Whether to show a list of ingredients.
  ## Returns

  {:ok, map()} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec menu_item_nutrition_label_image(Tesla.Env.client(), float(), keyword()) ::
          {:ok, nil} | {:ok, Map.t()} | {:error, Tesla.Env.t()}
  def menu_item_nutrition_label_image(connection, id, opts \\ []) do
    optional_params = %{
      :showOptionalNutrients => :query,
      :showZeroValues => :query,
      :showIngredients => :query
    }

    %{}
    |> method(:get)
    |> url("/food/menuItems/#{id}/nutritionLabel.png")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %{}},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Menu Item Nutrition Label Widget
  Visualize a menu item's nutritional label information as HTML including CSS.

  ## Parameters

  - connection (RecipesBot.SpoonacularClient.Connection): Connection to server
  - id (float()): The menu item id.
  - opts (KeywordList): [optional] Optional parameters
    - :default_css (boolean()): Whether the default CSS should be added to the response.
    - :show_optional_nutrients (boolean()): Whether to show optional nutrients.
    - :show_zero_values (boolean()): Whether to show zero values.
    - :show_ingredients (boolean()): Whether to show a list of ingredients.
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec menu_item_nutrition_label_widget(Tesla.Env.client(), float(), keyword()) ::
          {:ok, nil} | {:ok, String.t()} | {:error, Tesla.Env.t()}
  def menu_item_nutrition_label_widget(connection, id, opts \\ []) do
    optional_params = %{
      :defaultCss => :query,
      :showOptionalNutrients => :query,
      :showZeroValues => :query,
      :showIngredients => :query
    }

    %{}
    |> method(:get)
    |> url("/food/menuItems/#{id}/nutritionLabel")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Search Menu Items
  Search over 115,000 menu items from over 800 fast food and chain restaurants. For example, McDonald's Big Mac or Starbucks Mocha.

  ## Parameters

  - connection (RecipesBot.SpoonacularClient.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :query (String.t): The (natural language) search query.
    - :min_calories (float()): The minimum amount of calories the menu item must have.
    - :max_calories (float()): The maximum amount of calories the menu item can have.
    - :min_carbs (float()): The minimum amount of carbohydrates in grams the menu item must have.
    - :max_carbs (float()): The maximum amount of carbohydrates in grams the menu item can have.
    - :min_protein (float()): The minimum amount of protein in grams the menu item must have.
    - :max_protein (float()): The maximum amount of protein in grams the menu item can have.
    - :min_fat (float()): The minimum amount of fat in grams the menu item must have.
    - :max_fat (float()): The maximum amount of fat in grams the menu item can have.
    - :add_menu_item_information (boolean()): If set to true, you get more information about the menu items returned.
    - :offset (integer()): The number of results to skip (between 0 and 900).
    - :number (integer()): The maximum number of items to return (between 1 and 100). Defaults to 10.
  ## Returns

  {:ok, RecipesBot.SpoonacularClient.Model.SearchMenuItems200Response.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec search_menu_items(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, RecipesBot.SpoonacularClient.Model.SearchMenuItems200Response.t()}
          | {:error, Tesla.Env.t()}
  def search_menu_items(connection, opts \\ []) do
    optional_params = %{
      :query => :query,
      :minCalories => :query,
      :maxCalories => :query,
      :minCarbs => :query,
      :maxCarbs => :query,
      :minProtein => :query,
      :maxProtein => :query,
      :minFat => :query,
      :maxFat => :query,
      :addMenuItemInformation => :query,
      :offset => :query,
      :number => :query
    }

    %{}
    |> method(:get)
    |> url("/food/menuItems/search")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %RecipesBot.SpoonacularClient.Model.SearchMenuItems200Response{}},
      {401, false},
      {403, false},
      {404, false}
    ])
  end

  @doc """
  Menu Item Nutrition by ID Widget
  Visualize a menu item's nutritional information as HTML including CSS.

  ## Parameters

  - connection (RecipesBot.SpoonacularClient.Connection): Connection to server
  - id (integer()): The item's id.
  - opts (KeywordList): [optional] Optional parameters
    - :default_css (boolean()): Whether the default CSS should be added to the response.
    - :accept (String.t): Accept header.
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec visualize_menu_item_nutrition_by_id(Tesla.Env.client(), integer(), keyword()) ::
          {:ok, nil} | {:ok, String.t()} | {:error, Tesla.Env.t()}
  def visualize_menu_item_nutrition_by_id(connection, id, opts \\ []) do
    optional_params = %{
      :defaultCss => :query,
      :Accept => :headers
    }

    %{}
    |> method(:get)
    |> url("/food/menuItems/#{id}/nutritionWidget")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false},
      {401, false},
      {403, false},
      {404, false}
    ])
  end
end
