package com.owc.controller;

import java.util.List;

import javax.persistence.Column;

import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import com.owc.dao.CustomerImp;
import com.owc.dao.RiderImp;
import com.owc.dao.RouteAndFareImp;
import com.owc.model.Customers;
import com.owc.model.Riders;
import com.owc.model.RouteAndFare;

@Controller
@SessionAttributes({"swiftFare", "innovaFare", "suvFare", "pickupCity", "destinationCity" })
public class RiderController {

	@RequestMapping(value="/chooseCities", method=RequestMethod.GET)
	public ModelAndView chooseCities() {

		ModelAndView model = new ModelAndView("chooseCities");
		return model;
	}
	
	@RequestMapping(value = "/fares", method = RequestMethod.POST)
	public ModelAndView getFares(@ModelAttribute("routeAndFare") RouteAndFare routeAndFare, BindingResult result) {
		 String swiftFare = null;
		 String innovaFare = null;
		 String suvFare = null;		

		RouteAndFareImp routeAndfare = new RouteAndFareImp();
		List<RouteAndFare> fareList = routeAndfare.getFare(routeAndFare.getPickupCity(), routeAndFare.getDestinationCity());
	    for(RouteAndFare a : fareList) {
			swiftFare = a.getSwiftFare();
			innovaFare = a.getInnovaFare(); 
			suvFare = a.getSuvFare();
	    	System.out.println("Swift price is" + a.getSwiftFare());
	    	System.out.println("Innova price is" + a.getInnovaFare());
	    	System.out.println("SUV price is" +  a.getSuvFare());
	    	System.out.println("pickup city is" +  routeAndFare.getPickupCity());
	    	System.out.println("destination city is" +  routeAndFare.getDestinationCity());
	    }
		ModelAndView model = new ModelAndView("fares");
		model.addObject("swiftFare", swiftFare);
		model.addObject("innovaFare", innovaFare);
		model.addObject("suvFare", suvFare);
		model.addObject("pickupCity", routeAndFare.getPickupCity());
		model.addObject("destinationCity", routeAndFare.getDestinationCity());
		

		return model;	
	}
	
	@RequestMapping(value="/bookSwift", method=RequestMethod.GET)
	public ModelAndView bookSwift() {

		ModelAndView model = new ModelAndView("bookSwift");
		return model;
		
	}
	
	@RequestMapping(value="/bookInnova", method=RequestMethod.GET)
	public ModelAndView bookInnova() {

		ModelAndView model = new ModelAndView("bookInnova");
		return model;
		
	}
	
	@RequestMapping(value="/bookSuv", method=RequestMethod.GET)
	public ModelAndView bookSuv() {

		ModelAndView model = new ModelAndView("bookSuv");
		return model;
		
	}
	
	@RequestMapping(value = "/book", method = RequestMethod.POST)
	public ModelAndView getCustomerSuccessPage(@ModelAttribute("riders") Riders riders, BindingResult result) {
		
		RiderImp rider= new RiderImp();
		rider.saveRiderDetails(riders);
		ModelAndView model = new ModelAndView("bookingSuccessPage");
		return model;
	
	
	}
	
	@RequestMapping(value="/checkBookingStatus", method=RequestMethod.GET)
	public ModelAndView checkBookingStatus() {

		ModelAndView model = new ModelAndView("checkBookingStatus");
		return model;
	}
	
	@RequestMapping(value = "/checkBookingStatus", method = RequestMethod.POST)
	public ModelAndView getBookingStatus(@ModelAttribute("riders") Riders riders, BindingResult result) {
		
		RiderImp rider= new RiderImp();
		List<Riders> bookingList= rider.getBookingStatus(riders.getPhoneNo());
		System.out.println("Booking status is " + bookingList.get(0).getStatus());
		ModelAndView model = new ModelAndView("bookingStatus");
		model.addObject("bookingList", bookingList);
		return model;
	}
}
