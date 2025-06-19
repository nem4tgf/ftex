package com.example.beexam.controller;

import com.example.beexam.model.Place;
import com.example.beexam.repository.PlaceRepository;
import org.springframework.web.bind.annotation.*;
import java.util.List;

@RestController
@RequestMapping("/api/places")
@CrossOrigin(origins = "*")
public class PlaceController {
    private final PlaceRepository placeRepository;

    public PlaceController(PlaceRepository placeRepository) {
        this.placeRepository = placeRepository;
    }

    @GetMapping
    public List<Place> getAllPlaces() {
        return placeRepository.findAll();
    }}