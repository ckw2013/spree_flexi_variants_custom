Deface::Override.new(:virtual_path => 'spree/checkout/_delivery',
                     :name => 'add_cart_item_description_20130000001',
                     :replace => 'code[erb-loud]:contains("display_price(item.variant)")',
                     :text => '<% order_details = Spree::Order.find_by_id(current_order.id) %>
                     <% order_details.line_items.each do |lineitem| %>
                     <%= lineitem.price %>
                     <% end %>')

Deface::Override.new(:virtual_path => 'spree/checkout/_delivery',
                     :name => 'add_cart_item_description_20130000002',
                     :insert_after => 'code[erb-loud]:contains("item.variant.name")',
                     :text => '<% order_details = Spree::Order.find_by_id(current_order.id) %>
                     <% order_details.line_items.each do |lineitem| %>
                        <% lineitem.ad_hoc_option_values.each do |options| %>
                           <dt><%= options.option_value.option_type.presentation %></dt>
                           <dd><%= options.option_value.presentation %></dd>
                        <% end %>                    
                     <% end %>')
