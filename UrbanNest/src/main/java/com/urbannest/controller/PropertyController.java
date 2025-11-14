package com.urbannest.controller;

import com.urbannest.model.Property;
import com.urbannest.service.PropertyService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;

@Controller
public class PropertyController {

    private final PropertyService propertyService;

    public PropertyController(PropertyService propertyService) {
        this.propertyService = propertyService;
    }

    @GetMapping("/")
    public String home(Model model) {
        List<Property> featured = propertyService.getFeaturedProperties();
        model.addAttribute("featuredProperties", featured);
        return "home";
    }

    @GetMapping("/listings")
    public String listings(@RequestParam(value = "location", required = false) String location,
                           Model model) {
        List<Property> properties = (location == null || location.isBlank())
            ? propertyService.getAllProperties()
            : propertyService.searchByLocation(location);

        model.addAttribute("properties", properties);
        model.addAttribute("searchTerm", location == null ? "" : location);
        return "listings";
    }

    @GetMapping("/properties/{id}")
    public String propertyDetails(@PathVariable Long id, Model model) {
        Optional<Property> propertyOptional = propertyService.getPropertyById(id);
        if (propertyOptional.isEmpty()) {
            return "redirect:/listings";
        }
        model.addAttribute("property", propertyOptional.get());
        return "property-details";
    }
}
