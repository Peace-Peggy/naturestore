class CartItemsController < ApplicationController
    def create
        #find product and current cart
        selected_product = Product.find(params[:product_id])
        current_cart = @current_cart

        #Now I check if the cart already has this product, thenn find the cart_item in the cart and add quantity else create a new cart_item for this product
        if current_cart.products.include?(selected_product)
            #Then find the cart item
            @cart_item = current_cart.cart_items.find_by(:product_id => selected_product)
            #Then add the cart_items quantity 
            @cart_item.quantity +=1
        else
            @cart_item = CartItem.new
            @cart_item.cart = current_cart
            @cart_item.product = selected_product
        end
    
        #Save
        @cart_item.save 
        redirect_to_cart_path(current_cart)
    end
    private 
    def cart_item_params
        params.require(:cart_item).permit(:quantity, :product_id, :cart_id)
    end
end
