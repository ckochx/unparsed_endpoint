defmodule UnparsedEndpoint.EventView do
  use UnparsedEndpoint.Web, :view

  def render("index.json", %{events: events}) do
    %{data: render_many(events, UnparsedEndpoint.EventView, "event.json")}
  end

  def render("show.json", %{event: event}) do
    %{data: render_one(event, UnparsedEndpoint.EventView, "event.json")}
  end

  def render("event.json", %{event: event}) do
    %{id: event.id,
      type: event.type,
      name: event.name}
  end
end
