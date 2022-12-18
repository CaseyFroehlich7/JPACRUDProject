package com.skilldistillery.nationalparks.data;

import java.util.List;

import com.skilldistillery.nationalparks.entities.NationalPark.NationalPark;


public interface NationalParkDAO {

	
	NationalPark findById(int parkId);
	List<NationalPark> findAll();
	NationalPark create(NationalPark park);
	NationalPark update(Integer parkId, NationalPark park);
	boolean delete(Integer parkId, NationalPark park);
}
