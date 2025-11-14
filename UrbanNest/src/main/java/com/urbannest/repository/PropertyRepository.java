package com.urbannest.repository;

import com.urbannest.model.Property;
import java.util.List;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PropertyRepository extends JpaRepository<Property, Long> {

    List<Property> findByLocationContainingIgnoreCase(String location);
}
