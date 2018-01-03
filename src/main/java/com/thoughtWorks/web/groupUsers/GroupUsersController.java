package com.thoughtWorks.web.groupUsers;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/back/groupUsers")
public class GroupUsersController {

    @RequestMapping()
    public String index() {
        return "/groupUser/list";
    }
}
