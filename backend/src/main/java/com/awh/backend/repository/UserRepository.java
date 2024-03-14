package com.awh.backend.repository;

import com.awh.backend.model.user;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<user,Long> {
}
