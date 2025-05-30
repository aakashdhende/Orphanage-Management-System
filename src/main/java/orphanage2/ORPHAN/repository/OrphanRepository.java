package orphanage2.ORPHAN.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import orphanage2.ORPHAN.model.Orphan;
@Repository
public interface OrphanRepository extends JpaRepository<Orphan, Long> {}