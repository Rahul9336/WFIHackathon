package hackhathon.mait;

import java.io.File;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import WFI.MAIT.hackathon.dao.CartItemdao;
import WFI.MAIT.hackathon.dao.Cartdao;
import WFI.MAIT.hackathon.dao.Productdao;
import WFI.MAIT.hackathon.dto.Cart;
import WFI.MAIT.hackathon.dto.CartItem;
import WFI.MAIT.hackathon.dto.Product;

@Controller
public class ProductController {
	@Autowired
	Productdao productDao;
	Product product;
	Long ip;
	@Autowired
	Cartdao cartDao;
	Cart cart;
	@Autowired
	CartItemdao cartItemDao;
	CartItem cartItem;
	double grandprice;
	 int count;
	@RequestMapping(value = "/productdetail/{id}")
	public ModelAndView productdetail(Map<String, Object> map, @PathVariable(value = "id") Long id,HttpServletRequest request) {
		ModelAndView model = new ModelAndView("productdetail");
		product = productDao.getProductId(id);
		map.put("product", productDao.getProductId(id));
		map.put("suggestproduct", productDao.getProductId(id + 2));
		String address=request.getRemoteAddr();
		ip=extractint(address);
		Cart cartid=cartDao.getCartBycart_Id(ip);
		List<CartItem> cartItems=cartItemDao.cartItemGetByCart(cartid);
		for(CartItem cartitem:cartItems) {
			count+=cartitem.getSell_quantity();
		}
		map.put("cart", count);
		count=0;
		return model;
	}

	@RequestMapping(value="/addcart/{id}")
	public ModelAndView addcart(@PathVariable(value = "id") Long id,HttpServletRequest request,Map<String, Object> list) {
		ModelAndView model=new ModelAndView("redirect:/");
		String address=request.getRemoteAddr();
		product=productDao.getProductId(id);
		ip=extractint(address);
		if(cartDao.check(ip)) {
			cart=new Cart();
			cart.setCart_Id(ip);
			cartDao.add(cart);	
		}
		Cart cartid=cartDao.getCartBycart_Id(ip);
		List<CartItem> cartItems=cartItemDao.cartItemGetByCart(cartid);
		for(CartItem cartitem:cartItems) {
			if(cartitem.getProduct().getProduct_id()==id) {
				ModelAndView model1=new ModelAndView("redirect:/");
				System.out.println(cartitem.getSell_quantity());
				cartitem.setSell_quantity(cartitem.getSell_quantity()+1);
				System.out.println(cartitem.getSell_quantity());
				cartitem.setTotal_price(cartitem.getSell_quantity()*product.getPrice());
				cartItemDao.updateCartItem(cartitem);
				System.out.println(cartitem.getSell_quantity());
				System.out.println(cartid.getCartItemCount()+cartitem.getSell_quantity());
				/*list.put("cart", cartDao.getCartBycart_Id(ip));*/
				list.put("product", productDao.homepageproduct());
				return model1;
			}
		}
		cart=cartDao.getCartBycart_Id(ip);
		CartItem cartitem=new CartItem();
		cartitem.setSell_quantity(+1);
		cartitem.setTotal_price(product.getPrice()*cartitem.getSell_quantity());
		cartitem.setProduct(product);
		cartitem.setCart(cart);
		cartItemDao.addCartItem(cartitem);
//		list.put("cart", cartDao.getCartBycart_Id(ip));
		list.put("product", productDao.homepageproduct());
		return model;
	}
	@RequestMapping(value="/cartitems/remove/{id}")
	public ModelAndView cartitemRemove(@PathVariable(value = "id") Long id) {
		ModelAndView model=new ModelAndView("redirect:/cartdetail");
		cartItemDao.deleteCartItem(id);
		return model;
	}
	@RequestMapping(value="/cartitems/update/{id}")
	public ModelAndView cartitemUpdate(@PathVariable(value = "id") Long id,@RequestParam(value = "qty") int qty,Map<String,String> message) {
		ModelAndView model=new ModelAndView("redirect:/cartdetail");
		cartItem=cartItemDao.getCartItemByCartItem_Id(id);
		System.out.println(qty);
		product=cartItem.getProduct();
		int oqty=product.getQuantity();
		if(qty<=oqty) {
		cartItem.setSell_quantity(qty);
		cartItem.setTotal_price(cartItem.getSell_quantity()*cartItem.getProduct().getPrice());
		cartItemDao.updateCartItem(cartItem);
		message.put("quantity", "Quantity Succesfully Updated");
		return model;
		}else {
			message.put("ss", "This much quantity is not available");
			return model;
		}
	}
	@RequestMapping(value = "/admin/productaddsuccess", method = RequestMethod.POST)
	public ModelAndView setupForm(@Valid @ModelAttribute("product") Product product, BindingResult result,
			Map<String, Object> map, Map<String, String> message) {
		if (result.hasErrors()) {
			ModelAndView model = new ModelAndView("admin/product");
			return model;
		} else {
			if (!(product.getFile().getOriginalFilename().equals(""))) {
				product.setProductImg_url(uploadImage(product.getFile(), product));
			}
			ModelAndView model = new ModelAndView("admin/product");
			System.out.println("Image uploaded");
			productDao.add(product);
			message.put("message", "Product Add SuucessFully");
			map.put("product", productDao.productList());
			return model;
		}
		
	}
	public String uploadImage(MultipartFile multipart, Product product) {
		System.out.println("MultiPart1");
		String folderToUpload = "/resources/Image/";
		String fileName = multipart.getOriginalFilename();
		System.out.println("MultiPart2");
		String realPath = "C:\\Eclipse2\\hackathonfront\\src\\main\\webapp\\resources\\productimages";
		System.out.println(realPath);
		if (!new File(realPath).exists()) {
			System.out.println("MultiPart4");
			new File(realPath).mkdirs();
		}
		System.out.println("MultiPart5");
		String filePath = realPath+"/"+ product.getName() + ".jpg";
		File destination = new File(filePath);
		try {
			System.out.println("MultiPart6");
			multipart.transferTo(destination);
		} catch (Exception e) {
			e.printStackTrace();
		}
		System.out.println(fileName);
		System.out.println(folderToUpload);
		System.out.println(destination);
		return fileName;
	}
	public static long extractint(String str) {
	    String x = str;
	    String numStr = "";

	    for (int i = 0; i < x.length(); i++) {
	        char charCheck = x.charAt(i);
	        if(Character.isDigit(charCheck)) {
	            numStr += charCheck;
	        }
	    }
	    Long num = Long.parseLong(numStr);
	    return num;
}
}
