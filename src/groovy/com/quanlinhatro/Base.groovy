package com.quanlinhatro

abstract class Base implements Serializable{
    ObjectType objectType() {
        return ObjectType.NONE;
    }

    Long id;
}
