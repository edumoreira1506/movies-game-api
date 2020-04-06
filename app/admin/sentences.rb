ActiveAdmin.register Sentence do
  menu priority: 3, label: Sentence.model_name.human(count: :many)

  permit_params :content, :movie_id

  index download_links: false do
    selectable_column
    id_column
    column :content do |sentence|
      link_to sentence.content, admin_sentence_path(sentence)
    end
    column :movie do |sentence|
      link_to sentence.movie.name, admin_movie_path(sentence.movie)
    end
    actions
  end

  form do |f|
    f.inputs do
      f.input :content
      f.input :movie_id, as: :select, collection: Movie.sorted, :include_blank => false
    end
    f.actions
  end
end
