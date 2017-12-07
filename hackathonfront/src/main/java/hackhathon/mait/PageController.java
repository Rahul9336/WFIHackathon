package hackhathon.mait;
import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import WFI.MAIT.hackathon.dao.CartItemdao;
import WFI.MAIT.hackathon.dao.Cartdao;
import WFI.MAIT.hackathon.dao.Productdao;
import WFI.MAIT.hackathon.dao.Userdao;
import WFI.MAIT.hackathon.dto.Cart;
import WFI.MAIT.hackathon.dto.CartItem;
import WFI.MAIT.hackathon.dto.Product;
import WFI.MAIT.hackathon.dto.User;


@Controller
public class PageController {
	@Autowired
	Userdao userDao;
	@Autowired
	Productdao productDao;
	User user;
	User username;
	Cart cart;
	Product product;
	CartItem cartItem;
	@Autowired
	Cartdao cartDao;
	@Autowired
	CartItemdao cartItemDao;
	Long ip;
	int count;
	double price;
	//add product page
	@RequestMapping(value="/admin/product",method=RequestMethod.GET)
	public ModelAndView productpage(Map<String,Object> list) {
		ModelAndView model = new ModelAndView("admin/product");
		return model;
	}
	@RequestMapping(value="/",method=RequestMethod.GET)
	public ModelAndView homepage(Map<String, Object> list,HttpServletRequest request,Principal principal) {;
		String address=request.getRemoteAddr();
		ip=extractint(address);
		if(cartDao.check(ip)) {
			cart=new Cart();
			cart.setCart_Id(ip);
			cartDao.add(cart);	
		}
		System.out.println(ip);
		Cart cartid=cartDao.getCartBycart_Id(ip);
		List<CartItem> cartItems=cartItemDao.cartItemGetByCart(cartid);
		for(CartItem cartitem:cartItems) {
			count+=cartitem.getSell_quantity();
			price+=cartitem.getTotal_price();
		}try {
		if(principal.getName()!=null) {username=userDao.getUserByUsername(principal.getName());list.put("username", username);}}catch(Exception ex){}
		cartid.setCartItemCount(count);
		cartid.setGrandTotal(price);
		cartDao.add(cartid);
		list.put("cart", count);
		ModelAndView model=new ModelAndView("index");
		count=0;
		price=0.0;
		list.put("product", productDao.productList());
		System.out.println(request.getRequestURL());
		return model;
	}
	
	@RequestMapping(value="/cartdetail")
	public ModelAndView cartdetail(Map<String, Object> list,Map<String,String>message,HttpServletRequest request) {
		ModelAndView model= new ModelAndView("user/cartdetail");
		String address=request.getRemoteAddr();
		ip=extractint(address);
		Cart cartid=cartDao.getCartBycart_Id(ip);
		List<CartItem> cartItems=cartItemDao.cartItemGetByCart(cartid);
		for(CartItem cartitem:cartItems) {
			count+=cartitem.getSell_quantity();
			price+=cartitem.getTotal_price();
		}
		cartid.setCartItemCount(count);
		cartid.setGrandTotal(price);
		cartDao.add(cartid);
		list.put("cart", count);
		list.put("grand", price);
		list.put("detail", cartItems);
		count=0;
		price=0.0;
		return model;
	}
	@RequestMapping(value="/searchbox", method = RequestMethod.GET)
	public ModelAndView search(Map<String, String> heading, Map<String, Object> map,HttpServletRequest request) {
		List<Product> list =productDao.searchInsearchBox(request.getParameter("search"));
			ModelAndView model = new ModelAndView("/all");
			map.put("By", list);
			String address=request.getRemoteAddr();
			ip=extractint(address);
			Cart cartid=cartDao.getCartBycart_Id(ip);
			List<CartItem> cartItems=cartItemDao.cartItemGetByCart(cartid);
			for(CartItem cartitem:cartItems) {
				count+=cartitem.getSell_quantity();
			}
			map.put("cart", count);
			map.put("title", request.getParameter("search"));
			count=0;
			return model;	
	}
	@RequestMapping(value="/searchid", method = RequestMethod.GET)
	@ResponseBody
	public List<String> search(HttpServletRequest request){
		List<String>list=new ArrayList<>();
		List<Product>product=productDao.searchInsearchBox(request.getParameter("term"));
		for(Product pro:product) {
			list.add(pro.getName());
		}
		return list;
	}
	@RequestMapping(value="/user/payment")
	public ModelAndView checkout(Principal principal,HttpServletRequest request,Map<String,Object>detail) {
		ModelAndView model=new ModelAndView("user/payment");
		user=userDao.getUserByUsername(principal.getName());
		Cart cartid=cartDao.getCartByUser_Id(user.getUser_id());
		List<CartItem> cartItems=cartItemDao.cartItemGetByCart(cartid);
		detail.put("cartitems", cartItems);
		detail.put("name",cartid.getUser().getEmail() );
		detail.put("price", cartid.getGrandTotal());
		detail.put("count", cartid.getCartItemCount());
		detail.put("cart", cartid);
		return model;
}
	@RequestMapping(value="/user/buynow/{id}")
	public ModelAndView buynow(@PathVariable("id") Long id,Map<String,Object>detail,Principal principal,HttpServletRequest request)
	{
		ModelAndView model=new ModelAndView("user/payment");
		product=productDao.getProductId(id);
		detail.put("product", product);
		return model;
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
	@RequestMapping(value="/map")
	public String map() {
		return "farmer/map";
	}
}
