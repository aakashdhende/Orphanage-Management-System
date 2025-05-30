package orphanage2.ORPHAN.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import orphanage2.ORPHAN.model.Donation;
import orphanage2.ORPHAN.model.Orphan;
import orphanage2.ORPHAN.service.DonationService;
import orphanage2.ORPHAN.service.OrphanService;

@Controller
public class DonationController {

    @Autowired
    private DonationService donationService;

    @Autowired
    private OrphanService orphanService;

    @GetMapping("/donate/{orphanId}")
    public String showDonationForm(@PathVariable Long orphanId, Model model) {
        Orphan orphan = orphanService.getOrphanById(orphanId);
        Donation donation = new Donation();
        donation.setOrphan(orphan);
        model.addAttribute("donation", donation);
        return "donate";
    }

    @PostMapping("/donate")
    public String donate(@ModelAttribute Donation donation) {
        donationService.saveDonation(donation);
        return "redirect:/orphans";
    }
    @GetMapping("/donations")
    public String listDonations(Model model) {
        model.addAttribute("donations", donationService.getAllDonations());
        return "listDonations"; // JSP page ka naam
    }
}
