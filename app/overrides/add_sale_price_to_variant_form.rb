# Deface::Override.new(:virtual_path => 'spree/admin/variants/_form',
#   :name => 'add_sale_price_to_variant_form',
#   :insert_after => "erb[loud]:contains('text_field :price')",
#   :text => "
#     <%= f.field_container :on_sale do %>
#       <%= f.label :on_sale, raw(Spree.t(:on_sale) ) %>
#       <%= f.check_box :on_sale, :value => false %>
#     <% end %>
#     <%= f.field_container :sale_price do %>
#       <%= f.label :sale_price, raw(Spree.t(:sale_price) ) %>
#       <%= f.text_field :sale_price, :value =>
#         number_to_currency(@variant.sale_price, :unit => '') %>
#       <%= f.error_message_on :sale_price %>
#     <% end %>
#   ")