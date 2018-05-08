package pl.office.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.office.model.Address;

public interface AddressRepository extends JpaRepository<Address, Long>{
	
	

}
