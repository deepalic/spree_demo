Deface::Override.new(:virtual_path => 'spree/products/_cart_form',
  :name => 'show_sale_price_to_products',
  :insert_after => "div#product-price",
  :text => "
    <% if @product.on_sale %>
      <h6> Discounted Price is :</h6>
      <div>
        <span itemprop='price' class='lead price selling'>
          <%-  m =  Money::Currency.new('USD') %>
          <%= m.symbol + @product.sale_price.to_s%>
        </span>
        <span content='USD'itemprop='priceCurrency'></span>
      </div>
    <% end %>
  ")
