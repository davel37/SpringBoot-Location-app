package com.example.location.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.example.location.Repos.LocationRepository;
import com.example.location.modal.Location;
@Service

public class LocationServiceImp implements LocationService {
	
	@Autowired
	private LocationRepository repository;

	public LocationRepository getRepository() {
		return repository;
	}

	public void setRepository(LocationRepository repository) {
		this.repository = repository;
	}

	@Override
	public Location saveLocation(Location location) {
		return repository.save(location);
	}

	@Override
	public Location updateLocation(Location location)
	{
		return repository.save(location);
	}

	@Override
	public void deleteLocation(Location location) {
	repository.delete(location);

	}

	@Override
	public Location getlocationById(int id) {
		return repository.findById(id).orElse(new Location());
	}

	@Override
	public List<Location> getAllLocations() {
		return repository.findAll();
	}

}
