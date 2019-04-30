package main.annotation;

import javax.validation.ConstraintValidator;
import javax.validation.ConstraintValidatorContext;

public class CourseCodeConstraintValidator implements ConstraintValidator<CourseCode, String>{

    private String courcePrefix;

    @Override
    public void initialize(CourseCode courceCode) {
        courcePrefix = courceCode.value();
    }

    @Override
    public boolean isValid(String theCode, ConstraintValidatorContext context) {

        boolean result;

        if(theCode != null)
            result = theCode.startsWith(courcePrefix);
        else result = true;
        return result;
    }
}
