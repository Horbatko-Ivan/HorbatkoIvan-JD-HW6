package org.goit.hw6.entity;

import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@Builder
public class Client {
    private int id;
    private String name;

    public Client(int id,String name){
        this.id = id;
        this.name = name;
    }


    @Override
    public String toString() {
        return "Client{" +
                "id=" + id +
                ", name='" + name + '\'' +
                "}";
    }
}
