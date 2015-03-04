package gex.example.dto.v1
import groovy.transform.*
import javax.validation.constraints.*
/**
*A single user
**/
@CompileStatic
@Canonical
public class User implements Serializable {

  /* The user id, it is a uuid */
  String id

  /* the user email, it must be unique */
  @NotNull
  String email

  /* the username roles */
  List roles

  /* the user username, it must be unique */
  @NotNull
  String username

  /* the user password, only for creation */
  String password

}

