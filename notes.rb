<h1>Create a Song</h1>

<%= form_for @song  do |f| %>
  <%= f.label :title %>
  <%= f.text_field :title %>
  <%= f.text_field :artist_name %>
  <%= f.collection_select :genre_name, Genre.all, :name, :name %>
  <input name="song[note_ids][]">
  <input name="song[note_ids][]">
  <input name="song[note_ids][]">
  <br />

  <%= f.submit %>
<% end %>
