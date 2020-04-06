ActiveAdmin.register Category do
  menu priority: 4, label: Category.model_name.human(count: :many)

  permit_params :name, :movie_id

  index download_links: false do
    selectable_column
    id_column
    column :name do |category|
      link_to category.name, admin_category_path(category)
    end
    actions
  end
end
