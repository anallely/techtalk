package gex.example.dto.v1
import groovy.transform.*
import javax.validation.constraints.*

@CompileStatic
@Canonical
public class ErrorResponse implements Serializable {

  /* API error code */
  String code

  /* Human readable description of the error */
  String message

  /* Additional key/value information for diagnostic */
  Map extraData

  /* Validation errors corresponding to domain errors */
  List validationErrors

  /* The entity which have errors */
  String entityName

  /* The entity id which have errors */
  String identifier

}

