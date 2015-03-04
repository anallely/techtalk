package gex.example.domain

import grails.persistence.Entity

@Entity
class Hero {

  String id
  String name
  Integer age
  Boolean immortal

  static mapping = {
    id generator: 'uuid2'
  }

  static constraints = {
    name nullable: false, blank: false, unique: true
  }
}

