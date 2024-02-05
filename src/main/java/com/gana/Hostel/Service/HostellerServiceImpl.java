package com.gana.Hostel.Service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.gana.Hostel.Dao.HostellerRepo;
import com.gana.Hostel.dto.HostellerDetails;

@Service
public class HostellerServiceImpl implements HostellerService {

	@Autowired
	HostellerRepo repo;

	@Override
	public void addDetails(HostellerDetails hostel) {

		repo.save(hostel);
	}

	@Override
	public HostellerDetails findByIdno(String idno) {

		HostellerDetails hosteller = repo.findByIdno(idno);
		return hosteller;

	}

	@Override
	public List<HostellerDetails> getAll() {

		List<HostellerDetails> list = repo.findAll();

		return list;

	}

	@Override
	public void delete(int id) {

		repo.deleteById(id);

	}

	@Override
	public List<HostellerDetails> findByRoomno(int roomno) {

		List<HostellerDetails> list = repo.findByRoomno(roomno);

		return list;
	}

}
