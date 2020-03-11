ActiveAdmin.register Movie do
  menu priority: 2, label: Movie.model_name.human(count: :many)

  permit_params :name

  index download_links: false do
    selectable_column
    id_column
    column :name do |movie|
      link_to movie.name, admin_movie_path(movie)
    end
    actions
  end
end
