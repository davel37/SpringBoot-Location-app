package com.example.location.Repos;

import org.springframework.data.jpa.repository.JpaRepository;

import com.example.location.modal.Location;

public interface LocationRepository extends JpaRepository<	Location, Integer> {

}
