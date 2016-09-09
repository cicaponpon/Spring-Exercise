package com.ideyatech.hellospring.repository;


import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.ideyatech.hellospring.entity.Skill;


@Repository
public interface SkillRepository extends JpaRepository<Skill, Long>{

}