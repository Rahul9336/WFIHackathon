package WFI.MAIT.hackathon.dao;

import java.util.List;

import WFI.MAIT.hackathon.dto.Product;

public interface Productdao {
	public Product getProductId(Long product_id);

	public List<Product> productList();

	boolean add(Product product);

	boolean update(Product product);

	boolean delete(Product product);

	public List<Product> homepageproduct();

	public List<Product> searchInsearchBox(String search);
}
