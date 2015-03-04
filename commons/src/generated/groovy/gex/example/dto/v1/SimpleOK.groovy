package gex.example.dto.v1
import groovy.transform.*
import javax.validation.constraints.*

@CompileStatic
@Canonical
public class SimpleOK implements Serializable {

  /* It indicate successful state */
  @NotNull
  Boolean success

}

