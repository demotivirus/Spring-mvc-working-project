package main.mvc;
import javax.validation.constraints.*;

public class Customer {

    private String firstName;

    @NotNull
    @Size(min=3, message = "is a required field")
    private String lastName;

    @NotNull(message = "is required")
    @Min(value = 0, message = "must be greater then or equal to zero")
    @Max(value = 10, message = "must be less then or equal to 10")
    private Integer freePasses;

    @Pattern(regexp="^[a-zA-z0-9]{5}", message = "only 5 digits")
    private String postalCode;

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    public Integer getFreePasses() {
        return freePasses;
    }

    public void setFreePasses(Integer freePasses) {
        this.freePasses = freePasses;
    }

    public String getPostalCode() {
        return postalCode;
    }

    public void setPostalCode(String postalCode) {
        this.postalCode = postalCode;
    }
}
