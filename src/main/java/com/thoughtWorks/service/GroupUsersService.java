package com.thoughtWorks.service;

import com.thoughtWorks.common.ServerResponse;

public interface GroupUsersService {
    ServerResponse<String> addAccount(int userNumber, String usernamePrefix);
}
