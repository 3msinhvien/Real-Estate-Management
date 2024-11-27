package com.javaweb.enums;

import java.util.Map;
import java.util.TreeMap;

public enum DistrictCode {
    QUAN_1 ("Quận Hà Đông"),
    QUAN_2 ("Quận Thanh Xuân"),
    QUAN_3 ("Quận Cầu Giấy"),
    QUAN_4 ("Quận Đống Đa"),
    QUAN_5 ("Quận Tây Hồ"),
    QUAN_6 ("Quận Hai Bà Trưng"),
    QUAN_7 ("Quận Hoàn Kiếm"),
    QUAN_8 ("Quận Ba Đình"),
    QUAN_9 ("Quận Long Biên"),
    QUAN_10 ("Quận Hoàng Mai");
    private final String districtName;
    DistrictCode(String districtName) {
        this.districtName = districtName;
    }

    public String getDistrictName() {
        return districtName;
    }

    public static Map<String,String> type(){
        Map<String,String> listType = new TreeMap<>();
        for(DistrictCode item : DistrictCode.values()){
            listType.put(item.toString() , item.districtName);
        }
        return listType;
    }
}
