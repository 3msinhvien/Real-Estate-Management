package com.javaweb.controller.web;

import com.javaweb.constant.SystemConstant;
import com.javaweb.converter.BuildingDTOConverter;
import com.javaweb.enums.BuildingType;
import com.javaweb.enums.DistrictCode;
import com.javaweb.model.dto.BuildingDTO;
import com.javaweb.model.request.BuildingSearchRequest;
import com.javaweb.model.response.BuildingSearchResponse;
import com.javaweb.security.utils.SecurityUtils;
import com.javaweb.service.BuildingService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;
import java.util.Map;

@Controller(value = "homeControllerOfWeb")
public class HomeController {

    @Autowired
    private BuildingService buildingService;
    @Autowired
    private BuildingDTOConverter buildingDTOConverter;

    @RequestMapping(value = "/trang-chu", method = RequestMethod.GET)
    public ModelAndView homePage(BuildingSearchRequest buildingSearchRequest) {
        ModelAndView mav = new ModelAndView("web/home");
        mav.addObject("modelSearch", buildingSearchRequest);
        mav.addObject("districts", DistrictCode.type()); // Danh sách các quận
        return mav;
    }

    @GetMapping(value = "/gioi-thieu")
    public ModelAndView introduceBuilding() {
        ModelAndView mav = new ModelAndView("web/introduce");
        return mav;
    }

    @GetMapping(value = "/san-pham")
    public ModelAndView buildingList(@ModelAttribute BuildingSearchRequest buildingSearchRequest,
                                     @RequestParam Map<String, Object> conditions,
                                     @RequestParam (name="typeCode", required = false) List<String> typeCode,
                                     @ModelAttribute(SystemConstant.MODEL) BuildingDTO model
            ,HttpServletRequest request){

        List<BuildingSearchResponse> responseList = buildingService.findAll(conditions, typeCode);
        model.setMaxPageItems(5);
        model.setTotalItem(responseList.size());
        ModelAndView mav = new ModelAndView("web/list");
        mav.addObject("modelSearch", buildingSearchRequest);
        mav.addObject("buildingList", responseList);
        mav.addObject("districts", DistrictCode.type());
        return mav;
    }

    @GetMapping(value = "/chi-tiet")
    public ModelAndView buildingDetail(@RequestParam("id") Long id) {
        BuildingDTO building = buildingService.findBuildingById(Long.valueOf(id));
        building.setImageName("/images/img_" + id + ".jpg");
        ModelAndView mav = new ModelAndView("web/detail");
        mav.addObject("districts", DistrictCode.type());
        mav.addObject("building", building);
        return mav;
    }

    @GetMapping(value = "/tin-tuc")
    public ModelAndView news() {
        ModelAndView mav = new ModelAndView("web/news");
        return mav;
    }

    @GetMapping(value = "/lien-he")
    public ModelAndView contact() {
        ModelAndView mav = new ModelAndView("web/contact");
        return mav;
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public ModelAndView login() {
        ModelAndView mav = new ModelAndView("login");
        return mav;
    }

    @RequestMapping(value = "/access-denied", method = RequestMethod.GET)
    public ModelAndView accessDenied() {
        return new ModelAndView("redirect:/login?accessDenied");
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public ModelAndView logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
        Authentication auth = SecurityContextHolder.getContext().getAuthentication();
        if (auth != null) {
            new SecurityContextLogoutHandler().logout(request, response, auth);
        }
        return new ModelAndView("redirect:/trang-chu");
    }
}
