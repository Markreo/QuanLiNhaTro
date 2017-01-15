package com.quanlinhatro

/**
 * Created by giapn on 1/15/2017.
 */
public enum ObjectType{
    NONE(-1, "None"),
    REGION(0, "Region"),
    ROOM(1, "Room"),
    RENTER(2, "Renter");

    int id;
    String name;
    ObjectType(id, name) {this.id = id; this.name = name}
}