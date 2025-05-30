package orphanage2.ORPHAN.controller;

import orphanage2.ORPHAN.model.Orphan;
import orphanage2.ORPHAN.service.AdoptionService;
import orphanage2.ORPHAN.service.OrphanService;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;

@Controller
public class OrphanController {

    @Autowired
    private OrphanService orphanService;

    @Autowired
    private AdoptionService adoptionService;

    @GetMapping("/orphans")
    public String listOrphans(Model model) {
        List<Orphan> orphans = orphanService.getAllOrphans();
        List<Long> adoptedOrphanIds = adoptionService.getAllAdoptedOrphanIds();
        model.addAttribute("orphans", orphans);
        model.addAttribute("adoptedOrphanIds", adoptedOrphanIds);
        return "listOrphans";
    }

    @GetMapping("/addOrphan")
    public String addForm(Model model) {
        model.addAttribute("orphan", new Orphan());
        return "addOrphan";
    }

    @PostMapping("/addOrphan")
    public String addOrphan(@ModelAttribute Orphan orphan) {
        orphanService.addOrphan(orphan);
        return "redirect:/orphans";
    }

    @GetMapping("/editOrphan/{id}")
    public String editForm(@PathVariable Long id, Model model) {
        model.addAttribute("orphan", orphanService.getOrphanById(id));
        return "editOrphan";
    }

    @PostMapping("/updateOrphan")
    public String updateOrphan(@ModelAttribute Orphan orphan) {
        orphanService.updateOrphan(orphan);
        return "redirect:/orphans";
    }

    @GetMapping("/deleteOrphan/{id}")
    public String deleteOrphan(@PathVariable Long id, Model model) {
        try {
            orphanService.deleteOrphan(id);
            model.addAttribute("message", "Orphan deleted successfully!");
        } catch (Exception e) {
            model.addAttribute("error", "Failed to delete orphan: " + e.getMessage());
        }
        List<Orphan> orphans = orphanService.getAllOrphans();
        List<Long> adoptedOrphanIds = adoptionService.getAllAdoptedOrphanIds();
        model.addAttribute("orphans", orphans);
        model.addAttribute("adoptedOrphanIds", adoptedOrphanIds);
        return "listOrphans";
    }
}