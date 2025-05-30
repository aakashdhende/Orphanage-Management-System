package orphanage2.ORPHAN.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import orphanage2.ORPHAN.model.Adoption;
import orphanage2.ORPHAN.repository.AdoptionRepository;

@Service
public class AdoptionService {

    @Autowired
    private AdoptionRepository adoptionRepository;

    public void adoptOrphan(Adoption adoption) {
        adoptionRepository.save(adoption);
    }

    public List<Adoption> getAllAdoptions() {
        return adoptionRepository.findAll();
    }
    
    public List<Long> getAllAdoptedOrphanIds() {
        List<Adoption> adoptions = adoptionRepository.findAll();
        List<Long> adoptedOrphanIds = new ArrayList<>();
        for (Adoption adoption : adoptions) {
            adoptedOrphanIds.add(adoption.getOrphan().getId());
        }
        return adoptedOrphanIds;
    }
}
