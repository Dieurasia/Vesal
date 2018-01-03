package com.thoughtWorks.service.impl;

import com.thoughtWorks.common.ServerResponse;
import com.thoughtWorks.service.GroupUsersService;
import org.springframework.stereotype.Service;

@Service
public class GroupUsersServiceImpl implements GroupUsersService {
    @Override
    public ServerResponse<String> addAccount(int userNumber, String usernamePrefix) {
        System.out.println();
        return null;
    }
}
