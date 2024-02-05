package com.gana.Hostel.Controller;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import com.gana.Hostel.Service.HostellerService;
import com.gana.Hostel.dto.HostellerDetails;

@Controller
public class HostelController {

	@Autowired
	HostellerService service;

	@GetMapping("/")
	public String getHomePage() {

		return "homejsp";
	}

	@GetMapping("/enterDetails")
	public String enterDetails(@ModelAttribute("hostel") HostellerDetails hostel) {

		return "AddDetails";
	}

	@PostMapping("/add")
	public String addDetails(@ModelAttribute("hostel") HostellerDetails hostel, Model model) {

		service.addDetails(hostel);

		return findByRoomNo(hostel.getRoomno(), model);
	}

	@GetMapping("/show")
	public String getAll(Model model) {

		List<HostellerDetails> list = service.getAll();

		model.addAttribute("list", list);

		return "ShowDetails";
	}

	@PostMapping("/edit/{id}")
	public String edit(@PathVariable int id, @ModelAttribute("hostel") HostellerDetails hostel, Model model) {

		hostel.setId(id);
		service.addDetails(hostel);
		return getAll(model);
	}

	@GetMapping("/Edit")
	public String editDetails(@RequestParam String idno, @RequestParam int id, Model model) {

		HostellerDetails hosteller = service.findByIdno(idno);

		model.addAttribute("hostel", hosteller);
		model.addAttribute("id", id);

		return "EditForm";
	}

	@GetMapping("/Delete")
	public String deleteDetails(@RequestParam String idno, @RequestParam int id, Model model) {

		service.delete(id);

		return getAll(model);
	}

	@GetMapping("/findByRoomno")
	public String findByRoomNo(@RequestParam int roomno, Model model) {

		List<HostellerDetails> list = service.findByRoomno(roomno);
		if (list.isEmpty()) {
			model.addAttribute("messege", ":- No Data Found In This Room No!");
			return "homejsp";
		}
		model.addAttribute("list", list);
		return "ShowDetails";
	}

}
