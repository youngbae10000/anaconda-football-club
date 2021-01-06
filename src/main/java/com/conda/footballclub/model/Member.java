package com.conda.footballclub.model;

import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@NoArgsConstructor
public class Member {

    private int memberIdx;
    private String memberUserId;
    private String memberEmail;
    private String memberPassword;
}
