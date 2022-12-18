package com.skilldistillery.nationalparks.data;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.transaction.Transactional;

import org.springframework.stereotype.Service;

import com.skilldistillery.nationalparks.entities.NationalPark.NationalPark;

@Service
@Transactional
public class NationalParkJpaImpl implements NationalParkDAO {

	@PersistenceContext
	private EntityManager em;
	
	
	@Override
	public NationalPark findById(int parkId) {
		return em.find(NationalPark.class, parkId);
	}

	@Override
	public List<NationalPark> findAll() {
		String jpql = "SELECT p FROM NationalPark p";
		return em.createQuery(jpql, NationalPark.class).getResultList();
	}

	@Override
	public NationalPark create(NationalPark park) {
		
		em.persist(park);
		em.flush();
		return park;
	}

	@Override
	public NationalPark update(Integer parkId, NationalPark park) {
		
		NationalPark updatePark = em.find(NationalPark.class, parkId);
		System.out.println("1" + updatePark);
		System.out.println("2" + park);
		if (updatePark != null) {
			
			updatePark.setName(park.getName());
			updatePark.setState(park.getState());
			updatePark.setDescription(park.getDescription());
			updatePark.setYearEstablished(park.getYearEstablished());
			
			em.persist(updatePark);
			em.flush();
			
		}
		

		return updatePark;
	}

	@Override
	public boolean delete(int parkId) {
		boolean successfullyDeleted = false;
		
		NationalPark deletePark = em.find(NationalPark.class, parkId);
		
		
		if(deletePark != null) {
			em.remove(deletePark);
			successfullyDeleted = !em.contains(deletePark);
		}
		return successfullyDeleted;
	}
	

}
