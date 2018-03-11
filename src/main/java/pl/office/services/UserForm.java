package pl.office.services;

import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

public class UserForm {
	
	@NotNull
	@Pattern(regexp = "[A-Z0-9._%+-]+@[A-Z0-9.-]+.[A-Z]")
	private String email;
	
	@NotNull
	private String username;

}
