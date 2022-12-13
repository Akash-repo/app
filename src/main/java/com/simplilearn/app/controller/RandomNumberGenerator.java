package com.simplilearn.app.controller;

import org.springframework.web.bind.annotation.GetMapping;

import org.springframework.web.bind.annotation.RestController;

@RestController
public class RandomNumberGenerator {

    int max = 20;
    int min = 1;

        @GetMapping("/random")
        public String getRandomNumber() {
                return  ((Math.random() * (max - min)) + min) + "";
            }
}

