package com.gana.Hostel.Dao;

import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;
import com.gana.Hostel.dto.HostellerDetails;

public interface HostellerRepo extends JpaRepository<HostellerDetails, Integer> {

	HostellerDetails findByIdno(String idno);

	List<HostellerDetails> findByRoomno(int roomno);

}
