package com.urbannest.service;

import com.urbannest.model.Property;
import com.urbannest.repository.PropertyRepository;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Optional;

@Service
public class PropertyService {

    private final PropertyRepository propertyRepository;

    public PropertyService(PropertyRepository propertyRepository) {
        this.propertyRepository = propertyRepository;
    }

    public List<Property> getFeaturedProperties() {
        // Surface the first few listings to spotlight them on the home page.
        return propertyRepository.findAll().stream()
            .limit(3)
            .toList();
    }

    public List<Property> getAllProperties() {
        return propertyRepository.findAll();
    }

    public List<Property> searchByLocation(String location) {
        return propertyRepository.findByLocationContainingIgnoreCase(location);
    }

    public Optional<Property> getPropertyById(Long id) {
        return propertyRepository.findById(id);
    }
}
