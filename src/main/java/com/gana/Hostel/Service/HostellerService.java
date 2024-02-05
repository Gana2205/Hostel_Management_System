package com.gana.Hostel.Service;

import java.util.List;
import com.gana.Hostel.dto.HostellerDetails;

public interface HostellerService {

	void addDetails(HostellerDetails hostel);

	HostellerDetails findByIdno(String idno);

	List<HostellerDetails> getAll();

	void delete(int id);

	List<HostellerDetails> findByRoomno(int roomno);

}
