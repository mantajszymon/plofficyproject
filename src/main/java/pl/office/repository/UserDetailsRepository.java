package pl.office.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import pl.office.model.UserDetails;

public interface UserDetailsRepository extends JpaRepository<UserDetails, Long>{

}
