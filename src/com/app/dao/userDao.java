package com.app.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.app.bean.Book;
import com.app.bean.User;

public class userDao {
	public static Connection getConnection(){  
	    Connection con=null;  
	    try{  
	        Class.forName("com.mysql.jdbc.Driver");  
	        System.out.println("Connection Found..");
	        con=DriverManager.getConnection("jdbc:mysql://127.0.0.1:3307/user","root",""); 
	        System.out.println("Connection Establish.....");
	    }
	    catch(Exception e)
	    {
	    	System.out.println(e);
	    }  
	    return con;  
	}  
	
	public static int save(User u){  
	    int status=0;  
	    try{  
	        Connection con=getConnection();
	        PreparedStatement ps=con.prepareStatement(  
	"insert into register(name,password,email,sex,country) values(?,?,?,?,?)");  
	        ps.setString(1,u.getName());  
	       // System.out.println(u.getName());
	        ps.setString(2,u.getPassword());  
	        ps.setString(3,u.getEmail());  
	        ps.setString(4,u.getSex()); 
	       // System.out.println(u.getSex());
	        ps.setString(5,u.getCountry());  
	        status=ps.executeUpdate();  
	        System.out.println(status);
	    }catch(Exception e){System.out.println(e);}  
	    return status;  
	}
	
	
	public static boolean validate(User u)
	{
		boolean status = false;
		
		try
		{
			 Connection con=getConnection();
			 System.out.println("connect");
			PreparedStatement ps=con.prepareStatement("select * from register where name=? && password=?");
			 ps.setString(1,u.getName());
			 System.out.println(u.getName());
			 ps.setString(2,u.getPassword());
			 System.out.println(u.getPassword());
			 ResultSet st=ps.executeQuery();
			 System.out.println(st);
			 status=st.next();
		}catch(Exception e)
		{
			System.out.println(e);
		}
	return status;
	}
	 public static List<Book> getAllBooks(){  
	        List<Book> list=new ArrayList<Book>();  
	          
	        try{  
	            Connection con=userDao.getConnection();
	            System.out.println("book connection establish");
	            PreparedStatement ps=con.prepareStatement("select * from book");  
	            ResultSet rs=ps.executeQuery();  
	            while(rs.next()){  
	            	Book b=new Book();  
	                b.setBook_id(rs.getInt(1));  
	                b.setBook_name(rs.getString(2));    
	                b.setAuthor_name(rs.getString(3));  
	                b.setPrice(rs.getInt(4));
	                b.setImage(rs.getString(5));
	                System.out.println(rs.getString(5));
	                list.add(b);  
	                System.out.println("Data Set..");
	            }  
	            con.close();  
	        }catch(Exception e){e.printStackTrace();}  
	          
	        return list;  
	    }  
	 public static Book getRecordById(int id){  
		    Book b=null;  
		    try{  
		        Connection con=getConnection(); 
		        System.out.println("connection for book");
		   PreparedStatement ps=
				con.prepareStatement("select Book_id,Book_name,price from Book where Book_id=?");  
		        ps.setInt(1,id);  
		        System.out.println("Query fired");
		        ResultSet rs=ps.executeQuery();  
		        while(rs.next()){  
		            b=new Book();  
		            b.setBook_id(rs.getInt("Book_id"));  
		             System.out.println(rs.getInt("Book_id"));
		            b.setBook_name(rs.getString("Book_name"));  
		            b.setPrice(rs.getInt("price"));  
		        }  
		    }catch(Exception e){System.out.println(e);}  
		    return b;  
		}  
	 public static Book getbyId(int id){  
		    Book b=null;  
		    try{  
		        Connection con=getConnection(); 
		        System.out.println("connection for book");
		   PreparedStatement ps=
				con.prepareStatement("select Book_id from Book where Book_id=?");  
		        ps.setInt(1,id);  
		        System.out.println("Query fired");
		        ResultSet rs=ps.executeQuery();    
		            b.setBook_id(rs.getInt("Book_id"));  
		             System.out.println(rs.getInt("Book_id"));
		            
		    }catch(Exception e){System.out.println(e);}  
		    return b;  
		}  
	 public static int inherit(Book b)
		{
			int stat=0;
			try
			{
				Connection con=getConnection();
				 System.out.println("connect");
				PreparedStatement ps=con.prepareStatement("insert into quant(quantity)values(?)");
				ps.setInt(1,b.getQuant());
				System.out.println("quantity:"+b.getQuant());
				stat=ps.executeUpdate();
				System.out.println(stat);
			}
			catch(Exception e)
			{
				System.out.println(e);
			}
			return stat;
			
		}
	 public static int  update(User u){  
		    int status=0;  
		    try{  
		        Connection con=getConnection();  
		        PreparedStatement ps=con.prepareStatement("update register set password=? where email=? ");
		       
		        ps.setString(1,u.getPassword());  
		        ps.setString(2,u.getEmail());
		        status=ps.executeUpdate();  
		        System.out.println("Useremail-->"+u.getEmail());
		        System.out.println("Useremail-->"+u.getPassword());
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		}  
		
		
		
	 public static int save1(Book u){  
			//System.out.println(u.getAuthor_name());
		    int status=0;  
		    try{  
		        Connection con=getConnection();
		        
		        System.out.println(u.getBook_name());
		        System.out.println(u.getAuthor_name());
		        System.out.println(u.getPrice());
		        PreparedStatement ps=con.prepareStatement("insert into  booklist(book_name,author_name,price,image) values(?,?,?,?)");  
		         
		     
		        ps.setString(1,u.getBook_name());  
		        ps.setString(2,u.getAuthor_name());  
		        ps.setDouble(3,u.getPrice());
		        ps.setString(4,u.getImage());  
		        status=ps.executeUpdate();  
		        //System.out.println(status);
		        //System.out.println(u.getBook_id());
		      
		    }catch(Exception e){System.out.println(e);}  
		    return status;  
		}

		
		public static boolean forgetpassword(User u){  
	  	  
	     	 
	     	 Boolean status = null;
	  	    try{  
	  	        Connection con=getConnection(); 
	           System.out.println("Useremail-->"+u.getEmail());
	      
	   PreparedStatement ps=con.prepareStatement("select * from register where email=? ");  
	  	         
	  	       ps.setString(1,u.getEmail());
	         
	            ResultSet rs=ps.executeQuery();  
	            System.out.println("Useremail-->"+u.getEmail());
	          
	          status =rs.next();
	         System.out.println(status);
	            
	            
	   
	  	    }catch(Exception e){System.out.println(e);}  
	  	   return status;
	  	  
	     } 

	
	 


}
