package com.quanlinhatro

/**
 * Created by giapn on 3/21/2017.
 */

public enum Province{
    ANGIANG(-1, "None"),
    BARIAV(0, "Region"),
    ROOM(1, "Room"),
    RENTER(2, "Renter");

    int id;
    String name;
    Province(id, name) {this.id = id; this.name = name}
}