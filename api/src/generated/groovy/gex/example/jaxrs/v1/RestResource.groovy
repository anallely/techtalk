package gex.example.jaxrs.v1
import javax.ws.rs.*
import javax.ws.rs.core.*
import java.util.List
import java.util.Map
import gex.example.dto.v1.*

import org.glassfish.jersey.media.multipart.*
import static javax.ws.rs.core.MediaType.APPLICATION_JSON

@Path("/hello")
@Consumes(APPLICATION_JSON)
@Produces(APPLICATION_JSON)
interface RestResource {

  /***
   * @return Response This must be a valid Map JSON object.
   */
  @GET
  Response getRest();


}
