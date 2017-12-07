package hackhathon.mait;

import java.security.Principal;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import WFI.MAIT.hackathon.dao.BookStorageDao;
import WFI.MAIT.hackathon.dao.NotifyDao;
import WFI.MAIT.hackathon.dao.RolesDao;
import WFI.MAIT.hackathon.dao.StorageDao;
import WFI.MAIT.hackathon.dto.BookedStorage;
import WFI.MAIT.hackathon.dto.Notification;
import WFI.MAIT.hackathon.dto.Roles;
import WFI.MAIT.hackathon.dto.Storage;

@Controller
public class StorageController {
	
	@Autowired
	StorageDao storageDao;
	@Autowired
	RolesDao rolesDao;
	Storage storage;
	@Autowired
	BookStorageDao bookedStorageDao;
	Notification notify;
	@Autowired
	NotifyDao notifyDao;
	List<BookedStorage>bookedStorage=new ArrayList<>();
	@RequestMapping(value="/storagesignup",method=RequestMethod.GET)
	public ModelAndView StorageSignUp() {
		ModelAndView model=new ModelAndView("storage/signup");
		return model;
	}
	@RequestMapping(value = "/storagesignupsuccess", method = RequestMethod.POST)
	public ModelAndView SignupSuccess(@Valid @ModelAttribute("storage") Storage storage, BindingResult result,
			Map<String, String> map) {
		if (result.hasErrors()) {
			ModelAndView model = new ModelAndView("storage/signup");
			map.put("message", "error occured ");
			return model;
		} else {
			ModelAndView model1 = new ModelAndView("storage/signup");
			try {
				Roles roles = new Roles();
				storageDao.add(storage);
				roles.setRole("ROLE_STORAGE");
				roles.setPassword(storage.getPassword());
				roles.setEmail(storage.getEmail());
				rolesDao.add(roles);
				map.put("message", "Sign up Success");
			} catch (Exception ex) {
				map.put("Exception", "Email Alreday IN Used");
			}
			return model1;
		}
}
	@RequestMapping(value="/storage/mainpanel")
	public ModelAndView StorageMainPanel(Principal principal) {
		ModelAndView model=new ModelAndView("storage/managerpanel");
		storage=storageDao.getStorageByusername(principal.getName());
		bookedStorage=bookedStorageDao.getBookedStorageByid(storage.getStorage_id());
		model.addObject("storage",storage);
		return model;
	}
}
