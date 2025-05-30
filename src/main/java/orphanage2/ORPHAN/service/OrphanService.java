package orphanage2.ORPHAN.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import orphanage2.ORPHAN.model.Orphan;
import orphanage2.ORPHAN.repository.OrphanRepository;

@Service
public class OrphanService {
    @Autowired
    private OrphanRepository orphanRepository;

    public void addOrphan(Orphan orphan) {
        orphanRepository.save(orphan);
    }

    public List<Orphan> getAllOrphans() {
        return orphanRepository.findAll();
    }

    public Orphan getOrphanById(Long id) {
        return orphanRepository.findById(id).orElse(null);
    }

    public void updateOrphan(Orphan orphan) {
        orphanRepository.save(orphan);
    }

    @Transactional
    public void deleteOrphan(Long id) {
        try {
            if (orphanRepository.existsById(id)) {
                orphanRepository.deleteById(id);
            } else {
                throw new RuntimeException("Orphan with ID " + id + " not found");
            }
        } catch (Exception e) {
            throw new RuntimeException("Failed to delete orphan with ID " + id + ": " + e.getMessage());
        }
    }
}