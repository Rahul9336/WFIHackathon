package WFI.MAIT.hackathon.dao;

import WFI.MAIT.hackathon.dto.Cart;

public interface Cartdao {
	public boolean updateCart(Cart cart);

	public Cart getCartBycart_Id(Long cart_Id);

	public boolean deleteAllCartItems(Cart cart);

	boolean add(Cart cart);

	boolean check(Long id);

	public Cart getCartByUser_Id(Long cart_Id);
}
