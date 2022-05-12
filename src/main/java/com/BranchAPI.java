package com;

import model.Branch;

import java.io.IOException;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.util.HashMap;

import java.util.Scanner;



@WebServlet("/BranchAPI")

public class BranchAPI extends HttpServlet {
	
	Branch branchObj = new Branch();
	@Override
	protected void doDelete(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		Map paras = getParasMap(request);
		 String output = branchObj.deleteCEBLocation(paras.get("mapLocationCode").toString());
		response.getWriter().write(output); 
	}

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		super.doGet(req, resp);
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String output = branchObj.insertCEBdetails(request.getParameter("mapLocationCode"),
				 request.getParameter("addressLine1"),
				 request.getParameter("addressLine2"),
				request.getParameter("city"),
				request.getParameter("zipCode"));
				response.getWriter().write(output); 
	}

	@Override
	protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		 Map paras = getParasMap(request);
		 String output = branchObj.updateCEBDetails(paras.get("hidItemIDSave").toString(),
		 paras.get("mapLocationCode").toString(),
		paras.get("addressLine1").toString(),
		paras.get("addressLine2").toString(),
		paras.get("city").toString(),
		paras.get("zipCode").toString());
		response.getWriter().write(output); 
	}

}
