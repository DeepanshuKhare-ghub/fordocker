package com.docker.service;

import com.docker.entity.User;
import com.docker.repo.UserRepository;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserService {

    private UserRepository userRepository;

    public UserService(UserRepository userRepository) {
        this.userRepository = userRepository;
    }

    public List<User> getAllUsers() {
        return userRepository.findAll();
    }

    public ResponseEntity<User> save(User user) {
        User save = userRepository.save(user);
        return ResponseEntity.status(HttpStatus.CREATED).body(save);
    }
}
