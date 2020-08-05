package com.example.demo.Repository;
import java.util.List;

import org.hibernate.envers.Audited;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.example.demo.Models.Patient;



@Audited
@Repository
public interface PatientRepository extends CrudRepository<Patient, String> {
	Patient findByEmailIgnoreCase(String email);
	
	@Query(value = "select * from patient_info where status='Being Treated'",nativeQuery = true)
	List<Patient> findBeingTreatedPatients();
}
