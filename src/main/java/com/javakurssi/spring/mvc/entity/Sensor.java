package com.javakurssi.spring.mvc.entity;

import java.util.List;

/**
 * Created by marco on 21.4.2016.
 */
public class Sensor {

    private String name;
    private SensorType type;

    public enum SensorType {
        TEMPERATURE, MOTION, DIRECTION, LOCATION, SPEED, HEIGHT
    }
}
