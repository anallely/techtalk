package gex.example

import gex.example.client.v1.ApiClient
import gex.example.client.v1.ApiException
import gex.example.client.v1.Builder
import gex.example.client.v1.UserErrorException
import gex.example.dto.v1.Hero
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.boot.test.IntegrationTest
import org.springframework.boot.test.SpringApplicationContextLoader
import org.springframework.test.context.ContextConfiguration
import org.springframework.test.context.web.WebAppConfiguration
import spock.lang.Shared
import spock.lang.Specification

/**
 * Created by Tsunllly on 3/4/15.
 */
@ContextConfiguration(loader = SpringApplicationContextLoader, classes = Application)
@WebAppConfiguration
@IntegrationTest
class HeroSpec extends Specification{
  
  @Shared
  ApiClient apiClient
  
  
  def setup() {
    apiClient = new Builder().create().buildApi()
  }


  def 'Posting invalid  hero throws exception'(){
    setup:
      Hero hero = new Hero()
    
    when:
      apiClient.postHeroes(hero).toBlocking().first()
    
    then:
      UserErrorException e = thrown()
      e.message == "The provided entity has some errors."
      e.errorResponse.validationErrors.containsAll(["Name is mandatory"])
    
  }

  def 'Posting hero works happily'(){
    setup:
      Hero hero = new Hero()
      hero.name = 'Goku'
      hero.age = 12
      hero.immortal = false

    when:
      def response = apiClient.postHeroes(hero).toBlocking().first()

    then:
      response.name == 'Goku'
      response.age == 12
      response.immortal == false
  }
  
}
