package com;

import model.Branch;

//For REST Service
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;

//For JSON
import com.google.gson.*;

//For XML
import org.jsoup.*;
import org.jsoup.parser.*;
import org.jsoup.nodes.Document;

	@Path("/Branch")

	public class Branch_info
	{
	Branch branchObj = new Branch();
	
	@GET
	@Path("/")
	@Produces(MediaType.TEXT_HTML)
	public String readCEBLocation()
	{
		return branchObj.readCEBDetails();
	}
	
	@POST
	@Path("/")
	@Consumes(MediaType.APPLICATION_FORM_URLENCODED)
	@Produces(MediaType.TEXT_PLAIN)
	public String insertCEBdetails(@FormParam("mapLocationCode") String mapLocationCode,@FormParam("addressLine1") String addressLine1,@FormParam("addressLine2") String addressLine2,@FormParam("city") String city,@FormParam("zipCode") String zipCode,@FormParam("phone") String phone)
	{
		String output = branchObj.insertCEBdetails(mapLocationCode, addressLine1, addressLine2, city,zipCode,phone);
		return output;
	}
	
	@PUT
	@Path("/")
	@Consumes(MediaType.APPLICATION_JSON)
	@Produces(MediaType.TEXT_PLAIN)
	public String updateCEBDetails(String UserData)
	{
	//Convert the input string to a JSON object
	 JsonObject branchObject = new JsonParser().parse(UserData).getAsJsonObject();
	//Read the values from the JSON object
	 
	 String m = branchObject.get("mapLocationCode").getAsString();
	 String a1 = branchObject.get("addressLine1").getAsString();
	 String a2 = branchObject.get("addressLine2").getAsString();
	 String c = branchObject.get("city").getAsString();
	 String z = branchObject.get("zipCode").getAsString();
	 String p = branchObject.get("phone").getAsString();
	 
	 
	 String output = branchObj.updateCEBDetails(m,a1, a2, c,z,p);
	return output;
	}
	
	@DELETE
	@Path("/")
	@Consumes(MediaType.APPLICATION_XML)
	@Produces(MediaType.TEXT_PLAIN)
	public String deleteCEBLocation(String branchData)
	{
	//Convert the input string to an XML document
	 Document doc = Jsoup.parse(branchData, "", Parser.xmlParser());

	//Read the value from the element <mapLocationCode>
	 String mapLocationCode = doc.select("mapLocationCode").text();
	 String output = branchObj.deleteCEBLocation(mapLocationCode);
	return output;
	}
}
