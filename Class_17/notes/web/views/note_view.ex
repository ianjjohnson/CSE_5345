defmodule Notes.NoteView do
  use Notes.Web, :view

  #using raw is a big security issue in this case.
  def markdown_to_html(md), do: raw Earmark.to_html(md)

end
