package com.restfullapi.demo.Model;

import com.restfullapi.demo.Entity.User;
import org.modelmapper.ModelMapper;

import java.util.ArrayList;
import java.util.List;

public class UserMapper {
    public static UserDto convertUser(User user){
        ModelMapper mapper = new ModelMapper();
        UserDto userDto = mapper.map(user, UserDto.class);
        return userDto;
    }
    public static List<UserDto> convertListUser(List<User> userList){
        List<UserDto> userDtoList = new ArrayList<>();
        for (int i = 0; i < userList.size(); i++) {
            userDtoList.add(convertUser(userList.get(i)));
        }
        return  userDtoList;
    }
}
