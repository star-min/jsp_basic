package com.example;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/GetJavaDataCtrl")
public class GetJavaDataCtrl extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public GetJavaDataCtrl() {
        super();
    }

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String[] names = {"김예은","조수민","김성민","이규호"};
		
		ArrayList<String> list = new ArrayList<String>();
		list.add("광개토대왕");
		list.add("이순신");
		list.add("허준");
		list.add("원효대사");
		
		HashMap<String, Integer> map = new HashMap<>();
		map.put("gogildong", 56);
		map.put("shinhyeongman", 48);
		map.put("devilman", 39);
		map.put("guardamn", 39);
		
		HashMap<String, String> map2 = new HashMap<>();
		map2.put("name", "siota");
		map2.put("id", "GlobalGraeteStar");
		map2.put("tel", "010-5136-3100");
		
		Human vo = new Human();
		vo.setName("haloman");
		vo.setCountry("Mexico");
		vo.setAge(50);
		vo.setHobby("피들스틱");
		
		ArrayList<Human> humanList = new ArrayList<Human>();
		Human human = new Human();
		human.setName("bandal");
		human.setCountry("Nigth");
		human.setAge(0);
		human.setHobby("Dawn");
		humanList.add(human);
		
		request.setAttribute("names", names);
		request.setAttribute("list", list);
		request.setAttribute("map", map);
		request.setAttribute("map2", map2);
		request.setAttribute("vo", vo);
		request.setAttribute("humanList", humanList);
		
		RequestDispatcher view = request.getRequestDispatcher("06getJavaData.jsp");
		view.forward(request, response);
	}

}
