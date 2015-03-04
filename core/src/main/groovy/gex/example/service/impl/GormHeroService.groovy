package gex.example.service.impl

import gex.commons.exception.DomainClassValidationException
import gex.commons.exception.ObjectNotFoundException
import gex.example.dto.v1.Hero
import gex.example.service.HeroService
import org.springframework.stereotype.Component
import org.springframework.transaction.annotation.Transactional

import static gex.serling.binding.Util.bind

/**
 * Created by Tsunllly on 3/4/15.
 */
@Component
@Transactional
class GormHeroService implements HeroService {

  @Override
  Hero createHero(Hero hero) {
    gex.example.domain.Hero domainHero = bind(hero, gex.example.domain.Hero)
    domainHero.validate()
    if (domainHero.hasErrors()) {
      throw new DomainClassValidationException(domainHero)
    }
    domainHero.save(failOnError: true)
    bind(domainHero, Hero)
  }

  
  @Override
  List<Hero> listHeroes() {
    def dtoHeroes = gex.example.domain.Hero.list().each{
      bind(it, Hero)
    }
    dtoHeroes
  }

  @Override
  Hero getHeroByName(String name) {
    bind(getDomainHero(name), Hero)
  }

  @Override
  Hero updateHero(String name, Hero hero) {
    def domainHero = getDomainHero(name)
    domainHero = bind(hero, domainHero )
    bind(domainHero, Hero)
  }

  @Override
  def deleteHero(String name) {
    getDomainHero(name, true).delete()
  }


  private gex.example.domain.Hero getDomainHero(String name, Boolean failOnNotFound = false ){
    def domainHero = gex.example.domain.Hero.find{
      name == name
    }

    if(!domainHero && failOnNotFound) {
      throw new ObjectNotFoundException("Hero not found", name, 'Hero')
    }

    domainHero
  }
}
