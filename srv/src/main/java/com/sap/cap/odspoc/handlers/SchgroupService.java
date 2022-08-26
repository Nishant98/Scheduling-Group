package com.sap.cap.odspoc.handlers;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Component;

import com.sap.cds.services.cds.CdsCreateEventContext;
import com.sap.cds.services.cds.CdsReadEventContext;
import com.sap.cds.services.cds.CdsService;
import com.sap.cds.services.handler.EventHandler;
import com.sap.cds.services.handler.annotations.Before;
import com.sap.cds.services.handler.annotations.On;
import com.sap.cds.services.handler.annotations.ServiceName;

 @Component
 @ServiceName("SchedulingGroup")
 public class SchgroupService implements EventHandler {

    private Map<Object, Map<String, Object>> schGrps = new HashMap<>();



    // @Before(event = CdsService.EVENT_CREATE, entity = "SchedulingGroup.SchedulingGroupConfiguration")
    // public void validateInput(CdsCreateEventContext context) {
    //     System.out.println("Inside Before");
    //     System.out.println(context);
    //     System.out.println("Inside Before");
    //     System.out.println(context.getCqn().entries());
    //     System.out.println(context.getCqn().entries());
        
    // }


    // //  @On(event = CdsService.EVENT_CREATE, entity = "SchedulingGroup.SchedulingGroupConfiguration")
    // //  public void onCreate(CdsCreateEventContext context) {
    // //      System.out.println("Inside Create");
    // //      context.getCqn().entries().forEach(e -> schGrps.put(e.get("attributeName"), e));
    // //      context.setResult(context.getCqn().entries());
    // //  }

    //  @On(event = CdsService.EVENT_READ, entity = "SchedulingGroup.SchedulingGroupConfiguration")
    //  public void onRead(CdsReadEventContext context) {
    //      System.out.println("*********************Inside Read Handler**********************");
    //     //  context.setResult(schGrps.values());
    //  }

 }