package pl.office.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import pl.office.model.PlanZajec;
import pl.office.model.User;

@Repository
public interface PlanZajecRepository extends JpaRepository<PlanZajec, Long>{
	
	
}
