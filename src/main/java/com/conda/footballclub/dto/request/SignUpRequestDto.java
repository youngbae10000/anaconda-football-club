package com.conda.footballclub.dto.request;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class SignUpRequestDto {

    private String memberUserId;
    private String memberEmail;
    private String password;
}
