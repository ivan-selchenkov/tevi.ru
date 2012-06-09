# coding: utf-8

ActiveAdmin.register Picture do

  form do |f|
    f.inputs do
      f.input :name
      f.input :description
      f.input :galleries, :as => :string, :input_html => {:class => "autocomplete_multi", :multiple => false, :value => f.object.galleries}
      f.input :datetime, :as => :date
      f.input :price
      f.input :is_sold
      f.input :image, :as => :file
      f.input :thumb, :as => :file
    end

    f.buttons
  end

  show :title => :name do |picture|
    panel "Параметры картины" do
      attributes_table_for picture,
        :name,
        :description,
        :datetime,
        :galleries,
        :price,
        :is_sold do
          row(:image) {
            link_to picture.image.original_filename, picture.image.url
          }
          row(:thumb) {
            link_to picture.thumb.original_filename, picture.thumb.url
          }
      end
    end
  end

end
