package com.example.location.service;

import java.util.List;

import com.example.location.modal.Location;

public interface LocationService {

	Location saveLocation(Location location);

	Location updateLocation(Location location);

	void deleteLocation(Location location);

	Location getlocationById(int id);

	List<Location> getAllLocations();
}