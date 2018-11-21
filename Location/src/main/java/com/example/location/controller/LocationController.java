package com.example.location.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.example.location.modal.Location;
import com.example.location.service.LocationService;

@Controller
public class LocationController {
	@Autowired
	LocationService service;

	@RequestMapping("/showCreate")
	public String showCreate() {
		return "createLocation";
	}

	@RequestMapping("/saveloc")
	public String saveLocation(@ModelAttribute("location") Location location, ModelMap modelmap) {
		Location locationsaved = service.saveLocation(location);
		String msg = "Location saved with id: " + locationsaved.getId();
		modelmap.addAttribute("msg", msg);

		return "createLocation";
	}
	
	
	@RequestMapping("/displayLocations")
	public String displayLocations(ModelMap modelmap) {
		

		List<Location> locations =service.getAllLocations();
		modelmap.addAttribute("locations", locations);
		
		return  "displayLocations";
		
		
	}
	@RequestMapping("/deleteLocation")
	public String deleteLocation(@RequestParam("id")int id, ModelMap modelmap) {
	Location location =	service.getlocationById(id);
		service.deleteLocation(location);
		
	List<Location> locations = service.getAllLocations();
	modelmap.addAttribute("locations", locations);
	      
		
		return "displayLocations";
	}
	
	@RequestMapping("/showUpdate")
	public String showUpdate(@RequestParam("id")int id, ModelMap modelmap) {
		Location location =service.getlocationById(id);
		modelmap.addAttribute("location", location);
		return "updateLocation";
		
	}
	@RequestMapping("/updateloc")
	public String updateLocation(@ModelAttribute("location") Location location, ModelMap modelmap) {
		service.updateLocation(location);
		
	List<Location> locations = service.getAllLocations();
	
	modelmap.addAttribute("locations", locations);
		return "displayLocations";
		
		
		
		
	}

}
