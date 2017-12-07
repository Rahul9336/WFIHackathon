package WFI.MAIT.hackathon.dao;

import java.util.List;

import WFI.MAIT.hackathon.dto.Cart;
import WFI.MAIT.hackathon.dto.CartItem;
import WFI.MAIT.hackathon.dto.Product;



public interface CartItemdao  {
	public boolean addCartItem(CartItem cartItem);

	public List<CartItem> cartItemGetByCart(Cart cart);

	public boolean updateCartItem(CartItem cartItem);

	public boolean deleteCartItem(Long cart_id);

	public CartItem getCartItemByCartItem_Id(Long cartItem_Id);

	public CartItem getCartItemByUserIdAndProductId(Cart cart, Product product);

	public CartItem CartItemByCartIdAndProductId(Cart cart, Product product);
}
