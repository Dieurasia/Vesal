package com.thoughtWorks.web.groupUsers;

import com.thoughtWorks.common.ServerResponse;
import com.thoughtWorks.service.GroupUsersService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("/back/groupUsers")
public class GroupUsersController {

    @Autowired
    private GroupUsersService groupUsersService;


    @RequestMapping()
    public String index() {
        return "/groupUser/list";
    }

    @RequestMapping("/addAccount")
    @ResponseBody
    public ServerResponse<String> addAccount(int userNumber, String usernamePrefix) {

        return groupUsersService.addAccount(userNumber,usernamePrefix);
    }
}
