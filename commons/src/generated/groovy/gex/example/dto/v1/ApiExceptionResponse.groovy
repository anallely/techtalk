package gex.example.dto.v1
import groovy.transform.*
import javax.validation.constraints.*

@CompileStatic
@Canonical
public class ApiExceptionResponse implements Serializable {

  /* Describes type of error */
  String error

  /* Type of exception */
  String exception

  /* Detail of exception */
  String message

  /* The path throwing the exception */
  String path

  /* http error code */
  Long status

  /* Timestamp of error */
  String timestamp

}

