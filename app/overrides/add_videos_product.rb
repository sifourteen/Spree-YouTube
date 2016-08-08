Deface::Override.new(:virtual_path => 'spree/products/show',
                     :name => 'add_videos_to_products_show',
                     :insert_before => "[data-hook='product_description']",
                     :text => %q{ <%= render :partial => 'spree/products/video', :locals => { :product => @product } %> },
                     :disabled => false)