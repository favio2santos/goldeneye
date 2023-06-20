package com.codebay.goldeneye;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class WebController {

    @GetMapping("/")
    public String index(Model model) {
        model.addAttribute("user", new User());
        return "index";
    }

    @GetMapping("/getEmail")
    public String getEmail(Model model, @RequestParam String firstName, @RequestParam String surname, @RequestParam String office, @RequestParam String department) throws Exception {
            // Logic for calling the API (not implemented in this example)
            // Suppose the API returns the result with the function 'filterWord()'
    
            String filteredName = filterWord(firstName);
            String filteredSurname = filterWord(surname);
    
            String email = generateEmail(filteredName, filteredSurname, office, department);
    
            model.addAttribute("email", email);
    
            return "getEmail";
    }

    private String filterWord(String word) {
        // API logic not implemented, just returning the same word as example
        return word;
    }

    private String generateEmail(String firstName, String surname, String office, String department) {
        char f = firstName.toLowerCase().charAt(0);
        String[] surnameParts = surname.split(" ");
        String sur = surnameParts[0].toLowerCase();
        String o = office.toLowerCase();
        String[] departmentParts = department.split(" ");
        String dept = departmentParts[0].toLowerCase();

        return f + sur + "." + o + "@" + dept + ".goldeneye.com";
    }
}