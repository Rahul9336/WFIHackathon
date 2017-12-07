package WFI.MAIT.hackathon;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.List;

import org.junit.BeforeClass;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import WFI.MAIT.hackathon.dao.CropCalendarDao;
import WFI.MAIT.hackathon.dao.CropDetailDao;
import WFI.MAIT.hackathon.dao.CropsDao;
import WFI.MAIT.hackathon.dao.CropsDemandDao;
import WFI.MAIT.hackathon.dao.EmandiDao;
import WFI.MAIT.hackathon.dao.FarmerDao;
import WFI.MAIT.hackathon.dao.ManufacturerDao;
import WFI.MAIT.hackathon.dao.RetailerDao;
import WFI.MAIT.hackathon.dao.SeedsDao;
import WFI.MAIT.hackathon.dao.StorageDao;
import WFI.MAIT.hackathon.dto.CropCalendar;
import WFI.MAIT.hackathon.dto.Crop_Demands;
import WFI.MAIT.hackathon.dto.Crop_Detail;
import WFI.MAIT.hackathon.dto.Crops;
import WFI.MAIT.hackathon.dto.E_mandi;
import WFI.MAIT.hackathon.dto.Farmer;
import WFI.MAIT.hackathon.dto.Manufacturer;
import WFI.MAIT.hackathon.dto.Retailer;
import WFI.MAIT.hackathon.dto.Seeds;
import WFI.MAIT.hackathon.dto.Storage;
public class TestCase1 {
	private static AnnotationConfigApplicationContext context;
	
	static CropCalendarDao cropCalendarDao;
	static CropDetailDao cropDetailDao;
	static CropsDemandDao cropsDemandDao;
	static EmandiDao emandiDao;
	static FarmerDao farmerDao;
	static ManufacturerDao manufacturerDao;
	static RetailerDao retailerDao;
	static SeedsDao seedsDao;
	static StorageDao storageDao;
	static CropsDao cropsDao;
	static Crop_Demands cropdemands;
	static Crop_Detail cropdetail;
	static CropCalendar cropCalendar;
	static List<Crops> crop;
	static Crops crops;
	static E_mandi emandi;
	static Farmer farmer;
	static Manufacturer manufacturer;
	static Retailer retailer;
	static Seeds seeds;
	static Storage storage;
	static Crop_Detail cropDetail;
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("WFI.MAIT.hackathon");
		context.refresh();
		cropCalendarDao = (CropCalendarDao) context.getBean("cropCalendarDao");
		farmerDao=(FarmerDao) context.getBean("farmerDao");
		retailerDao=(RetailerDao) context.getBean("retailerDao");
		manufacturerDao=(ManufacturerDao) context.getBean("manufacturerDao");
		seedsDao=(SeedsDao) context.getBean("seedsDao");
		cropDetailDao=(CropDetailDao) context.getBean("cropDetailDao");
		emandiDao =(EmandiDao) context.getBean("emandiDao");
		storageDao=(StorageDao)context.getBean("storageDao");
		cropsDemandDao=(CropsDemandDao)context.getBean("cropsDemandDao");
		cropsDao=(CropsDao)context.getBean("cropsDao");
	}
	//@Test
	public void test1() {
		farmer=new Farmer();
		farmer.setPassword("123456");
		farmer.setPhone_no("9560496223");
		farmer.setUsername("rahul12345");
		farmerDao.add(farmer);
		storage=new Storage();
		storage.setAvailable_storage("1000kg");
		storage.setManager_contact("97163265416");
		storage.setManager_name("nishit");
		storage.setStorage_contact("02152563");
		storage.setStorage_name("Khan$Khan");
		storage.setStorage_type("cold Storage");
		storage.setTotal_capacity("10000kg");
		storageDao.add(storage);
	}
	//@Test
	public void cropDemand() {
		retailer=new Retailer();
		retailer.setName("ajay");
		retailer.setPhone_no("941316413");
		retailerDao.add(retailer);
		cropdemands=new Crop_Demands();
		cropdemands.setCrop_name("rice");
		cropdemands.setWeight(100);
		cropdemands.setDescription("Basmati only");
		cropdemands.setRetailer(retailer);
		cropsDemandDao.add(cropdemands);
		Crop_Demands cropdemands1=new Crop_Demands();
		cropdemands1.setDescription("Rice of best quality");
		cropdemands1.setCrop_name("rice");
		cropdemands1.setWeight(23);
		cropdemands1.setRetailer(retailer);
		cropsDemandDao.add(cropdemands1);
		
		}
	//@Test
	public void croptest() {
		farmer=new Farmer();
		farmer.setPassword("9336");
		farmer.setPhone_no("9560496223");
		farmer.setUsername("rock29520@gmail.com");
		farmerDao.add(farmer);
		crops=new Crops();
		crops.setCity("Rohini");
		crops.setDistrict("North West Delhi");
		crops.setName("Wheat");
		crops.setState("BIHAR");
		cropsDao.add(crops);
		seeds=new Seeds();
		seeds.setCrops(crops);
		seeds.setPrice("1021");
		seeds.setSeed_varirty("______");
		seedsDao.add(seeds);
		seeds=new Seeds();
		seeds.setCrops(crops);
		seeds.setPrice("02312");
		seeds.setSeed_varirty("safaf");
		seedsDao.add(seeds);	
	}
	//@Test
	public void cropCalendar() {
		farmer=new Farmer();
		farmer.setPassword("123456");
		farmer.setPhone_no("9560496223");
		farmer.setUsername("rahul12345");
		
		farmerDao.add(farmer);
		cropCalendar=new CropCalendar();
		
		cropCalendarDao.add(cropCalendar);
		cropCalendar=new CropCalendar();
		
		cropCalendarDao.add(cropCalendar);
	} 
	//@Test
	public void addresstest() {
		farmer=new Farmer();
		farmer.setDistrict("PanchsheelNagar");
		farmer.setPassword("123456");
		farmer.setPhone_no("9560496223");
		farmer.setUsername("rahul12345");
		farmerDao.add(farmer);
	}
	
	//@Test
		public void emandi() {
			emandi=new E_mandi();
			emandi.setCrop_name("bajra");
			emandi.setPrice(new Double(400));
			emandi.setAddress("Atico House, 5309 Grain Market, Ambala Cantonment, Haryana 133001");
			emandi.setMandiname("Ambala Mandi");
			emandi.setPincode(120052);
			emandi.setDistrict("Ambala");
			emandi.setState("HARYANA");
			emandi.setCity("Ambala");
			emandiDao.add(emandi);
			emandi.setCrop_name("Wheat");
			emandi.setPrice(new Double(1500));
			emandi.setAddress("Atico House, 5309 Grain Market, Ambala Cantonment, Haryana 133001");
			emandi.setMandiname("Ambala Mandi");
			emandi.setPincode(120052);
			emandi.setDistrict("Ambala");
			emandi.setState("HARYANA");
			emandi.setCity("Ambala");
			emandiDao.add(emandi);
			emandi.setCrop_name("bajra");
			emandi.setPrice(new Double(400));
			emandi.setAddress("Atico House, 5309 Grain Market, Ambala Cantonment, Haryana 133001");
			emandi.setMandiname("Ambala Mandi");
			emandi.setPincode(120052);
			emandi.setDistrict("Ambala");
			emandi.setState("HARYANA");
			emandi.setCity("Ambala");
			emandiDao.add(emandi);
	
		}
	
	//@Test
		public void RahulGupta() {
			Farmer farmertest=new Farmer();
			farmertest=farmerDao.getFarmerById((long) 4);
			cropDetail.setCrop_name("neww");
			cropDetail.setCrop_rate(1200.00);
			cropDetail.setFarmer(farmertest);
			cropDetailDao.add(cropdetail);
			System.out.println("output:"+farmertest.getPhone_no());
			emandi=emandiDao.getEmandiById(new Long(5));
			System.out.println(emandi.getCrop_name());
		}
		//@Test
		public void crops() {
			crop=cropsDao.searchsCropsBystateAndName("BIHAR", "Wheat");
			for(Crops cr:crop) {
				System.out.println(cr.getName()+""+cr.getState());
			}
		}
		//@Test
		public void date() {
			SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy");
			Calendar cal = Calendar.getInstance();
			String expiry = sdf.format(cal.getTime());
			System.out.println(expiry);
		}
}