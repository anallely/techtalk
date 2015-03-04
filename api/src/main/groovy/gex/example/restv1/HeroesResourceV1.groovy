package gex.example.restv1

import gex.example.dto.v1.Hero
import gex.example.jaxrs.v1.HeroesResource
import gex.example.service.HeroService
import gex.javax.ws.rs.Resource
import gex.jaxrs.ApiResponse
import groovy.util.logging.Slf4j
import org.springframework.beans.factory.annotation.Autowired

import javax.ws.rs.core.Response

/**
 * Created by Tsunllly on 3/4/15.
 */
@Resource
@Slf4j
class HeroesResourceV1 implements HeroesResource{

  @Autowired
  @Delegate
  ApiResponse apiResponse

  @Autowired
  HeroService heroService
  
  @Override
  Response getHeroes() {
    ok(heroService.listHeroes())
  }

  @Override
  Response postHeroes(Hero hero) {
    created(heroService.createHero(hero))
  }
}
