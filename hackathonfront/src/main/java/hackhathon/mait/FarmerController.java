package hackhathon.mait;

import java.security.Principal;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
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
import org.springframework.web.servlet.ModelAndView;

import WFI.MAIT.hackathon.dao.BookStorageDao;
import WFI.MAIT.hackathon.dao.CartItemdao;
import WFI.MAIT.hackathon.dao.Cartdao;
import WFI.MAIT.hackathon.dao.CropCalendarDao;
import WFI.MAIT.hackathon.dao.CropDetailDao;
import WFI.MAIT.hackathon.dao.CropsDao;
import WFI.MAIT.hackathon.dao.EmandiDao;
import WFI.MAIT.hackathon.dao.FarmerDao;
import WFI.MAIT.hackathon.dao.NotifyDao;
import WFI.MAIT.hackathon.dao.RolesDao;
import WFI.MAIT.hackathon.dao.StorageDao;
import WFI.MAIT.hackathon.dto.BookedStorage;
import WFI.MAIT.hackathon.dto.Cart;
import WFI.MAIT.hackathon.dto.CartItem;
import WFI.MAIT.hackathon.dto.CropCalendar;
import WFI.MAIT.hackathon.dto.Crop_Detail;
import WFI.MAIT.hackathon.dto.Crops;
import WFI.MAIT.hackathon.dto.E_mandi;
import WFI.MAIT.hackathon.dto.Farmer;
import WFI.MAIT.hackathon.dto.Notification;
import WFI.MAIT.hackathon.dto.Roles;
import WFI.MAIT.hackathon.dto.Storage;

@Controller
public class FarmerController {
	@Autowired
	FarmerDao farmerDao;
	@Autowired
	CropDetailDao cropDetailDao;
	@Autowired
	RolesDao rolesDao;
	@Autowired
	StorageDao storageDao;
	@Autowired
	NotifyDao notifyDao;
	@Autowired
	CropsDao cropsDao;
	@Autowired
	CropCalendarDao cropCalendarDao;
	@Autowired
	EmandiDao emandiDao;
	E_mandi emandi;
	Farmer farmer;
	Storage storage;
	Long ip;
	Crops crops;
	Notification notify;
	CropCalendar cropCalendar;
	List<Notification> bidfromManufacture = new ArrayList<>();
	List<Notification> storageNotify = new ArrayList<>();
	List<Notification> notifylist = new ArrayList<>();
	List<Crops> cropslist = new ArrayList<>();
	List<BookedStorage>bookedStorage=new ArrayList<>();
	List<CropCalendar>cropcalendar=new ArrayList<>();
	List<Crop_Detail>croplist=new ArrayList<>();
	List<Crop_Detail>explist=new ArrayList<>();
	@Autowired
	BookStorageDao bookedStorageDao;
	static Integer count = 0;
	static Integer item = 0;
	static Double price=0.0;
	@Autowired
	Cartdao cartDao;
	Cart cart;
	@Autowired
	CartItemdao cartItemDao;
	@RequestMapping(value = "/signup", method = RequestMethod.GET)
	public ModelAndView Signup() {
		ModelAndView model = new ModelAndView("SignUp");
		return model;
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView Login(HttpServletRequest request,Map<String,Object>list) {
		ModelAndView model = new ModelAndView("farmer/login");
		String address=request.getRemoteAddr();
		ip=extractint(address);
		Cart cartid=cartDao.getCartBycart_Id(ip);
		List<CartItem> cartItems=cartItemDao.cartItemGetByCart(cartid);
		for(CartItem cartitem:cartItems) {
			count+=cartitem.getSell_quantity();
			price+=cartitem.getTotal_price();
		}
		list.put("cart", count);
		list.put("grand", price);
		list.put("detail", cartItems);
		count=0;
		price=0.0;
		return model;
	}

	@RequestMapping(value = "/signupsuccess", method = RequestMethod.POST)
	public ModelAndView SignupSuccess(@Valid @ModelAttribute("farmer") Farmer farmer, BindingResult result,
			Map<String, String> map) {
		if (result.hasErrors()) {
			ModelAndView model = new ModelAndView("SignUp");
			return model;
		}else {
			ModelAndView model1 = new ModelAndView("SignUp");
			try {
				Roles roles = new Roles();
				farmerDao.add(farmer);
				roles.setRole("ROLE_FARMER");
				roles.setPassword(farmer.getPassword());
				roles.setEmail(farmer.getUsername());
				rolesDao.add(roles);
				map.put("message", "Sign up Success");
			} catch (Exception ex) {
				map.put("Exception", "Email Alreday IN Used");
			}
			count=0;
			return model1;
		}
	}

	@RequestMapping(value = "/farmer/cropdetail", method = RequestMethod.GET)
	public ModelAndView fillcropdetail(Principal principal) {
		ModelAndView model = new ModelAndView("farmer/cropdetail");
		farmer = farmerDao.getFarmerByUsername(principal.getName());
		notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
		for (@SuppressWarnings("unused")
		Notification n : notifylist) {
			count = count + 1;
		}
		model.addObject("count", count);
		model.addObject("cropdetail", new Crop_Detail());
		count=0;
		return model;
	}

	@RequestMapping(value = "/farmer/addcropdetail")
	public ModelAndView addcropdetail(@Valid @ModelAttribute("cropdetail") Crop_Detail cropdetail, BindingResult result,
			Map<String, String> map, Principal principal) {
		ModelAndView model = new ModelAndView("farmer/cropdetail");
		if (result.hasErrors()) {
			return model;
		} else {
			ModelAndView model1 = new ModelAndView("farmer/cropdetail");
			try {
				farmer = farmerDao.getFarmerByUsername(principal.getName());
				notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
				for (@SuppressWarnings("unused")
				Notification n : notifylist) {
					count = count + 1;
				}
				SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
				Date date = sdf.parse(cropdetail.getDateofharvest());
				String newDateString = sdf.format(date);
			    System.out.println(newDateString);
			    if(cropdetail.getCrop_name().equalsIgnoreCase("tomato")) {
			    	Calendar cal = Calendar.getInstance();
			    	cal.setTime(date);
			    	cal.add(Calendar.MONTH, 1);
			    	String expiry = sdf.format(cal.getTime());
			    	cropdetail.setExpirydate(expiry);
			    }else
			    if(cropdetail.getCrop_name().equalsIgnoreCase("potato")) {
			    	Calendar cal = Calendar.getInstance();
			    	cal.setTime(date);
			    	cal.add(Calendar.MONTH, 6);
			    	String expiry = sdf.format(cal.getTime());
			    	cropdetail.setExpirydate(expiry);
			    }else if(cropdetail.getCrop_name().equalsIgnoreCase("capsicum")) {
			    	Calendar cal = Calendar.getInstance();
			    	cal.setTime(date);
			    	cal.add(Calendar.MONTH, 2);
			    	String expiry = sdf.format(cal.getTime());
			    	cropdetail.setExpirydate(expiry);
			    }else  if(cropdetail.getCrop_name().equalsIgnoreCase("apple")) {
			    	Calendar cal = Calendar.getInstance();
			    	cal.setTime(date);
			    	cal.add(Calendar.YEAR, 1);
			    	String expiry = sdf.format(cal.getTime());
			    	cropdetail.setExpirydate(expiry);
			    } else if(cropdetail.getCrop_name().equalsIgnoreCase("bannana")) {
			    	Calendar cal = Calendar.getInstance();
			    	cal.setTime(date);
			    	cal.add(Calendar.DATE, 10);
			    	String expiry = sdf.format(cal.getTime());
			    	cropdetail.setExpirydate(expiry);
			    }else if(cropdetail.getCrop_name().equalsIgnoreCase("mango")) {
			    	Calendar cal = Calendar.getInstance();
			    	cal.setTime(date);
			    	cal.add(Calendar.MONTH, 2);
			    	String expiry = sdf.format(cal.getTime());
			    	System.out.println(expiry);
			    	cropdetail.setExpirydate(expiry);
			    }else if(cropdetail.getCrop_name().equalsIgnoreCase("wheat")) {
			    	Calendar cal = Calendar.getInstance();
			    	cal.setTime(date);
			    	cal.add(Calendar.YEAR, 1);
			    	String expiry = sdf.format(cal.getTime());
			    	System.out.println(expiry);
			    	cropdetail.setExpirydate(expiry);
			    }else if(cropdetail.getCrop_name().equalsIgnoreCase("rice")) {
			    	Calendar cal = Calendar.getInstance();
			    	cal.setTime(date);
			    	cal.add(Calendar.YEAR, 2);
			    	String expiry = sdf.format(cal.getTime());
			    	System.out.println(expiry);
			    	cropdetail.setExpirydate(expiry);
			    }
				model.addObject("count", count);
				cropdetail.setFarmer(farmer);
				cropDetailDao.add(cropdetail);
				map.put("message", "Crop SuccessFully Add");
				count=0;
			} catch (Exception ex) {
				map.put("Exception", "Something Went Wrong Check FAQ");
			}
			return model1;
		}
	}

	@RequestMapping(value = "/farmer/bookstorage")
	public ModelAndView BookingstorageRequest(Principal principal) {
		ModelAndView model = new ModelAndView("farmer/bookstorage");
		farmer=farmerDao.getFarmerByUsername(principal.getName());
		notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
		for (@SuppressWarnings("unused")
		Notification n : notifylist) {
			count = count + 1;
		}
		model.addObject("count", count);
		count=0;
		return model;
	}

	@RequestMapping(value = "/farmer/storageresult",method=RequestMethod.POST)
	public ModelAndView StorageResult(@RequestParam(value = "state") String state,
			@RequestParam(value = "pincode") Integer pincode, @RequestParam(value = "crop") String crop,
			Map<String, Object> map,Map<String,String>message,Principal principal) {
		ModelAndView model = new ModelAndView("farmer/storageresult");
		farmer=farmerDao.getFarmerByUsername(principal.getName());
		notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
		for (@SuppressWarnings("unused")
		Notification n : notifylist) {
			count = count + 1;
		}
		model.addObject("count", count);
	
		map.put("storage",storageDao.getStorageBystateorpincodeorcrop(state, pincode));
		message.put("message", "No Storage Availabel In your Locality Try With different Credentials");
		count=0;
		return model;
	}
	@RequestMapping(value="/farmer/bookrequest/{storage_id}")
	public ModelAndView StorageBookingRequest(@PathVariable("storage_id") Long storageid, Map<String, Object> map,Principal principal) {
		ModelAndView model=new ModelAndView("farmer/bookingform");
		farmer=farmerDao.getFarmerByUsername(principal.getName());
		notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
		for (@SuppressWarnings("unused")
		Notification n : notifylist) {
			count = count + 1;
		}
		model.addObject("count", count);
		map.put("storageid", storageid);
		count=0;
		return model;
	}
	@RequestMapping(value="/farmer/viewmap/{storage_id}")
	public ModelAndView ViewInMAp(@PathVariable("storage_id") Long storageid, Map<String, Object> map,Principal principal) {
		ModelAndView model=new ModelAndView("farmer/map");
		map.put("storage", storageDao.getbookingStorageId(storageid));
		farmer=farmerDao.getFarmerByUsername(principal.getName());
		notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
		for (@SuppressWarnings("unused")
		Notification n : notifylist) {
			count = count + 1;
		}
		model.addObject("count", count);
		count=0;
		
		return model;
	}
	@RequestMapping(value = "/farmer/bookstorage/{storage_id}")
	public ModelAndView Bookstorage(@Valid @ModelAttribute("bookedStorage") BookedStorage bookstorage,
			BindingResult result, @PathVariable("storage_id") Long storageid, Map<String, String> map,
			Principal principal) {
		DateFormat format = new SimpleDateFormat();
		Date date = new Date();
		ModelAndView model = new ModelAndView("farmer/bookingform");
		if (result.hasErrors()) {
			return model;
		} else {
			ModelAndView model1 = new ModelAndView("farmer/bookingform");
			try {
				farmer = farmerDao.getFarmerByUsername(principal.getName());
				notify = new Notification();
				notify.setStorage_id(storageid);
				notify.setPurpose("Storage Booking");
				notify.setFarmer_id(farmer.getFarmer_id());
				notify.setNotify_date(format.format(date));
				notifyDao.add(notify);
				storage = storageDao.getStorageById(storageid);
				bookstorage.setDate(format.format(date));
				bookstorage.setFarmer(farmer);
				bookstorage.setDate(format.format(date));
				bookstorage.setNotify(notify);
				bookstorage.setStatus("false");
				bookstorage.setStorage(storage);
				bookedStorageDao.addBookedStorage(bookstorage);
				notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
				for (@SuppressWarnings("unused")
				Notification n : notifylist) {
					count = count + 1;
				}
				model.addObject("count", count);
				map.put("message", "Booking Request Successfully Sent and We will notify when Your  Storage Booking Confirm");
				count=0;
			} catch (Exception ex) {
				map.put("Exception", "Something Went Wrong Check FAQ");
			}
			return model1;
		}
	}

	@RequestMapping(value = "/farmer/cropcalendar")
	public ModelAndView cropCalendar(Map<String, Object> list,Principal principal) {
		ModelAndView model = new ModelAndView("farmer/cropcalendar");
		model.addObject("crops", new Crops());
		notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
		for (@SuppressWarnings("unused")
		Notification n : notifylist) {
			count = count + 1;
		}
		model.addObject("count", count);
		list.put("cropslist", cropsDao.searchsCropsState("asdf"));
		count=0;
		return model;
	}

	@RequestMapping(value = "/farmer/cropcalendarstate/{state}")
	public ModelAndView cropCalendarstate(@Valid @ModelAttribute("crops") Crops crops, BindingResult result,
			Map<String, Object> list, Map<String, String> message, @PathVariable("state") String state,Principal principal) {
		ModelAndView model = new ModelAndView("farmer/cropcalendar");
		if (result.hasErrors()) {
			return model;
		} else {
			try {
				notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
				for (@SuppressWarnings("unused")
				Notification n : notifylist) {
					count = count + 1;
				}
				model.addObject("count", count);
				System.out.println(crops.getState() + "" + state);
				list.put("cropslist", cropsDao.searchsCropsState(crops.getState()));
				message.put("message", "No Crops Available In choose Region");
				count=0;
				return model;
			} catch (Exception ex) {
			}
			return model;
		}
	}

	@RequestMapping(value = "/farmer/cropcalendarshow")
	public ModelAndView cropCalendarshowOption(@Valid @ModelAttribute("crops") Crops crops, BindingResult result,
			Map<String, Object> list, Principal principal, Map<String, String> message) {
		ModelAndView model = new ModelAndView("farmer/cropcalendar");
		if (result.hasErrors()) {
			return model;
		} else {
			try {
				notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
				for (@SuppressWarnings("unused")
				Notification n : notifylist) {
					count = count + 1;
				}
				model.addObject("count", count);
				System.out.println(crops.getName() + "" + crops.getState());
				list.put("cropslist", cropsDao.searchsCropsBystateAndName(crops.getState(), crops.getName()));
				message.put("message", "No Data Available For This Crop");
				count=0;
				return model;
			} catch (Exception ex) {
			}
			return model;
		}
	}

	@RequestMapping(value = "/farmer/startcropcalendar/{cropname}")
	public ModelAndView Startcropcalendar(@Valid @ModelAttribute("crops") Crops crops, BindingResult result,
			Map<String, Object> list, Principal principal, Map<String, String> message,@PathVariable("cropname")String cropname) {
		ModelAndView model;
		if(cropname.equalsIgnoreCase("wheat")) {
			 model = new ModelAndView("crops/wheat");
		}
		else
			if(cropname.equalsIgnoreCase("sugarcane")) {
			 model = new ModelAndView("crops/sugarcane");
		}
			else
				if(cropname.equalsIgnoreCase("rice")) {
				model = new ModelAndView("crops/rice");
			}
				else
					if(cropname.equalsIgnoreCase("cotton")) {
					 model = new ModelAndView("crops/cotton");
				}
					else
						if(cropname.equalsIgnoreCase("pearmillet")) {
						 model = new ModelAndView("crops/pearlmillet");
					}
						else
						 {
							 model = new ModelAndView("farmer/123");
						}
		if (result.hasErrors()) {
			ModelAndView model1 = new ModelAndView("farmer/cropcalendar");
			return model1;
		} else {
			try {
				notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
				for (@SuppressWarnings("unused")
				Notification n : notifylist) {
					count = count + 1;
				}
				model.addObject("count", count);
				model.addObject("message", "Crop Calendar Successfully Started");
				DateFormat format = new SimpleDateFormat();
				Date date = new Date();
				farmer = farmerDao.getFarmerByUsername(principal.getName());
				notify=new Notification();
				notify.setPurpose("Crop Calendar");
				notify.setFarmer_id(farmer.getFarmer_id());
				notify.setNotify_date(format.format(date));
				notifyDao.add(notify);
				cropCalendar = new CropCalendar();
				cropCalendar.setStatus("ACTIVE");
				cropCalendar.setCropname(cropname);
				cropCalendar.setNotify(notify);
				cropCalendar.setFarmer_id(farmer.getFarmer_id());
				cropCalendarDao.add(cropCalendar);
				count=0;
				return model;
			} catch (Exception ex) {
			}
			return model;
		}
	}

	@RequestMapping(value = "/farmer/myaccount")
	public ModelAndView myaccount(Principal principal) {
		ModelAndView model = new ModelAndView("farmer/myaccount");
		farmer=farmerDao.getFarmerByUsername(principal.getName());
		notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
		for (@SuppressWarnings("unused")
		Notification n : notifylist) {
			count = count + 1;
		}
		model.addObject("count", count);
		model.addObject("farmer", farmerDao.getFarmerByUsername(principal.getName()));
		model.addObject("crop",cropDetailDao.cropByfarmer(farmer));
		model.addObject("cropcalendar",cropCalendarDao.cropdetailByfarmer(farmer.getFarmer_id()));
		count=0;
		return model;
	}

	@RequestMapping(value = "/farmer/myaccountupdate", method = RequestMethod.POST)
	public ModelAndView MyaccountUpdate(@Valid @ModelAttribute("farmer") Farmer farmer, BindingResult result,
			Map<String, Object> list, Principal principal, Map<String, String> message) {
		ModelAndView model = new ModelAndView("farmer/myaccount");
		if (result.hasErrors()) {
			return model;
		} else {
			try {
				farmerDao.update(farmer);
				notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
				for (@SuppressWarnings("unused")
				Notification n : notifylist) {
					count = count + 1;
				}
				list.put("count", count);
				message.put("message", "Your Account SuccessFully Update");
				return model;
			} catch (Exception ex) {
			}
			return model;
		}
	}

	@RequestMapping(value = "/farmer/mainpanel")
	public ModelAndView MainPanel(Principal principal, Map<String, Object> map) {
		ModelAndView model = new ModelAndView("farmer/farmerpanel");
		farmer = farmerDao.getFarmerByUsername(principal.getName());
		notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
		storageNotify = notifyDao.getnotifyforFarmerStorage(farmer.getFarmer_id());
		for (@SuppressWarnings("unused")
		Notification n : notifylist) {
			count = count + 1;
		}
		map.put("farmer", farmer);
		map.put("storage", storageNotify);
		map.put("count", count);
		count=0;
		return model;
	}

	@RequestMapping(value = "/farmer/notification")
	public ModelAndView Notification(Principal principal, Map<String, Object> map) {
		ModelAndView model = new ModelAndView("farmer/notification");
		farmer = farmerDao.getFarmerByUsername(principal.getName());
		notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
		bookedStorage = bookedStorageDao.getBookedStorageByFarmerId(farmer);
		cropcalendar=cropCalendarDao.cropdetailByfarmer(farmer.getFarmer_id());
		croplist=cropDetailDao.cropByfarmer(farmer);
		DateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
		Calendar cal = Calendar.getInstance();
		String expiry = sdf.format(cal.getTime());
		System.out.println(expiry);

		for(Crop_Detail cp:croplist) {
			boolean test=cp.getExpirydate().matches(expiry);
			System.out.println(test);
			System.out.println(cp.getExpirydate());
			if(cp.getExpirydate().matches(expiry)) {
				explist.add(cp);
				System.out.println(expiry);
			}
			count=count+1;
		}
		System.out.println(explist.size());
		for (@SuppressWarnings("unused")
		Notification n : notifylist) {
			count = count + 1;
		}
		map.put("farmer", farmer);
		map.put("storage", bookedStorage);
		map.put("count", count);
		map.put("cropcalendar", cropcalendar);
		map.put("aboutexpcrop", explist);
		count=0;
		return model;
	}
	@RequestMapping(value = "/farmer/videos")
	public ModelAndView videos(Principal principal, Map<String, Object> map) {
		ModelAndView model = new ModelAndView("farmer/videos");
		farmer = farmerDao.getFarmerByUsername(principal.getName());
		cropslist = cropsDao.cropslist();
		notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
		for (@SuppressWarnings("unused")
		Notification n : notifylist) {
			count = count + 1;
		}
		map.put("links", cropslist);
		map.put("count", count);
		map.put("farmer", farmer);
		count=0;
		return model;
	}
	@RequestMapping(value="/farmer/seeds")
	public ModelAndView GetList(String wheat)
	{
		ModelAndView model=new ModelAndView("seed/seedslist");
		return model;
	}
	@RequestMapping(value="/farmer/emandi")
	public ModelAndView EmandiPrice(Principal principal,Map<String,Object>map) {
		farmer = farmerDao.getFarmerByUsername(principal.getName());
		notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
		for (@SuppressWarnings("unused")
		Notification n : notifylist) {
			count = count + 1;
		}
		map.put("count", count);
		ModelAndView model=new ModelAndView("farmer/emandi");
		count=0;
		return model;
	}
	@RequestMapping(value="/farmer/emandistate/{state}")
	public ModelAndView EmandiPriceBYstate(@PathVariable("state") String state,Map<String,Object>map,Map<String,String>message,Principal principal) {
		ModelAndView model=new ModelAndView("farmer/emandi");
		farmer = farmerDao.getFarmerByUsername(principal.getName());
		notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
		for (@SuppressWarnings("unused")
		Notification n : notifylist) {
			count = count + 1;
		}
		map.put("count", count);
		map.put("state", state);
		map.put("district", emandiDao.searchEmandiBystate(state));
		count=0;
		return model;
	}
	@RequestMapping(value="/farmer/emandi/district")
	public ModelAndView EmandiPriceBYDistict(@RequestParam("district") String district,Map<String,Object>map,Map<String,String>message,Principal principal) {
		ModelAndView model=new ModelAndView("farmer/emandi");
		farmer = farmerDao.getFarmerByUsername(principal.getName());
		notifylist = notifyDao.getnotifyforFarmer(farmer.getFarmer_id());
		for (@SuppressWarnings("unused")
		Notification n : notifylist) {
			count = count + 1;
		}
		map.put("count", count);
		map.put("emandi", emandiDao.searchByDistrict(district));
		count=0;
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
	
}