package com.hcl;


import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.jsonPath;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.web.WebAppConfiguration;
import org.springframework.test.web.servlet.MockMvc;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;
import org.springframework.web.context.WebApplicationContext;
@WebAppConfiguration
public class TestWebApp extends SpringBootTestApplication {

	@Autowired
	private WebApplicationContext webApplicationContext;

	private MockMvc mockMvc;

	@BeforeEach
	public void setup() {
		mockMvc = MockMvcBuilders.webAppContextSetup(webApplicationContext).build();
	}

	@Test
	public void testEmployee() throws Exception {
		mockMvc.perform(get("/feed")).andExpect(status().isOk());
		
		
		
		
				//.andExpect(content().contentType("application/json;charset=UTF-8"))   // web client expects json 
				//.andExpect(jsonPath("$.feedbackFrom").value("John")).andExpect(jsonPath("$.designation").value("Developer"))
				//.andExpect(jsonPath("$.empId").value("1")).andExpect(jsonPath("$.salary").value(4000));

	}

}



