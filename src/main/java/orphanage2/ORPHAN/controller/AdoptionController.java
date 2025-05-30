package orphanage2.ORPHAN.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

import orphanage2.ORPHAN.model.Adoption;
import orphanage2.ORPHAN.model.Orphan;
import orphanage2.ORPHAN.service.AdoptionService;
import orphanage2.ORPHAN.service.OrphanService;

@Controller
public class AdoptionController {

    @Autowired
    private AdoptionService adoptionService;

    @Autowired
    private OrphanService orphanService;

    @GetMapping("/adopt/{orphanId}")
    public String showAdoptionForm(@PathVariable Long orphanId, Model model) {
        Orphan orphan = orphanService.getOrphanById(orphanId);
        Adoption adoption = new Adoption();
        adoption.setOrphan(orphan);
        model.addAttribute("adoption", adoption);
        return "adoptOrphan"; // JSP page
    }

    @PostMapping("/adopt")
    public String adoptOrphan(@ModelAttribute Adoption adoption) {
        adoptionService.adoptOrphan(adoption);
        return "redirect:/orphans";
    }

    @GetMapping("/adoptedList")
    public String listAdoptedOrphans(Model model) {
        model.addAttribute("adoptions", adoptionService.getAllAdoptions());
        return "listAdoptedOrphans"; // JSP page
    }
}
