
package mypack;

import java.awt.Color;
import java.io.FileOutputStream;
import java.io.PrintWriter;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.bouncycastle.asn1.ocsp.Request;
import org.springframework.web.servlet.view.document.AbstractPdfView;



import javax.servlet.http.*;

/*import com.itextpdf.text.BaseColor;
import com.itextpdf.text.Font;*/
import com.lowagie.text.*;
import com.lowagie.text.pdf.BaseFont;
import com.lowagie.text.pdf.PRAcroForm;
import com.lowagie.text.pdf.PdfContentByte;
import com.lowagie.text.pdf.PdfPCell;
import com.lowagie.text.pdf.PdfPTable;
import com.lowagie.text.pdf.PdfReader;
import com.lowagie.text.pdf.PdfStamper;
import com.lowagie.text.pdf.PdfWriter;

import mypack.booking;

public class PDFView extends AbstractPdfView {

 @SuppressWarnings("unused")
protected void buildPdfDocument(Map model,
   Document document, PdfWriter writer, HttpServletRequest request,
   HttpServletResponse resp) throws Exception {
  
	 
	 //String fpath = (List<booking>)request.getParameter("thecookie").toString();
	 

	 
	 
  List<booking> emplist = (List<booking>) model.get("mylist");
  List<paxdetail> pdlist = (List<paxdetail>) model.get("pdlist");//changes in team2
  Paragraph space = new Paragraph(new Chunk(" "));
  Paragraph newline = new Paragraph(new Chunk("\n"));  
  //Table table1 = new Table(0);
  Paragraph par1 = new Paragraph(new Chunk("print receipt"));
  par1.setAlignment(Paragraph.ALIGN_CENTER);
  document.add(par1);
  
  Paragraph par = new Paragraph(new Chunk(new Date().toString()));
  
  par.setAlignment(Paragraph.ALIGN_LEFT);
  
  document.add(par);
  document.add(newline);
  
 
  
  PdfPTable table1 = new PdfPTable(2); 
 
  Image img = Image.getInstance("images/tour.jpg");
  PdfPCell cell3 = new PdfPCell(img, true);
  
  img.scaleToFit(100, 100);
 
 // document.add(img);
  
  Paragraph header = new Paragraph(new Chunk("Team Tours and Travels",FontFactory.getFont(FontFactory.HELVETICA, 30)));
 
  cell3.setBorder(Rectangle.NO_BORDER);
  table1.addCell(cell3);
  
  PdfPCell cell4 = new PdfPCell(header);
  cell4.setBorder(Rectangle.NO_BORDER);
  table1.addCell(cell4);

  document.add(table1);/*
PdfPTable table1 = new PdfPTable(1); 

      Image image = Image.getInstance("images/images.jpg");
  
      PdfPCell cell3 = new PdfPCell(image, true);
     
      table1.addCell(cell3);
     
      document.add(table1);*/
      
     

      Paragraph header1 = new Paragraph(new Chunk("Booking Details",FontFactory.getFont(FontFactory.HELVETICA, 15,Font.BOLD,new Color(255, 0,0))));
      document.add(header1);
  Table table = new Table(2);

  //PdfPCell cell = new PdfPCell( header);
 
  /*Paragraph header11=new Paragraph(new Chunk("BookingId",FontFactory.getFont(FontFactory.HELVETICA,12,Font.BOLD ))); 
table.addCell(header11);


Paragraph header12=new Paragraph(new Chunk("DateOfDeparture",FontFactory.getFont(FontFactory.HELVETICA,12,Font.BOLD)));
table.addCell(header12);

Paragraph header13=new Paragraph(new Chunk("NoOfPerson",FontFactory.getFont(FontFactory.HELVETICA,12,Font.BOLD)));
table.addCell(header13);

Paragraph header14=new Paragraph(new Chunk("Payment",FontFactory.getFont(FontFactory.HELVETICA,12,Font.BOLD)));
table.addCell(header14);
*/







	
  Iterator<booking> itr=emplist.iterator();
 
  
  while(itr.hasNext())
  {
		 
	  DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy"); 
	   LocalDateTime now = LocalDateTime.now();
	  booking temp=(booking)itr.next();
		
	  Integer a=temp.getBookingid();
	  String ss=a.toString();

	  Integer b=temp.getNoofperson();
	  String ss1=b.toString();
	  
	  
	  
	  
  Paragraph bid = new Paragraph(new Chunk("Booking Id                   "+ ss,FontFactory.getFont(FontFactory.HELVETICA, 10)));
  Paragraph dod = new Paragraph(new Chunk("DateOfDeparture         "+ dtf.format(now),FontFactory.getFont(FontFactory.HELVETICA, 10)));
  Paragraph nop = new Paragraph(new Chunk("NumberOfPerson          "+ss1,FontFactory.getFont(FontFactory.HELVETICA, 10)));
  Paragraph pay = new Paragraph(new Chunk("Payment                       "+temp.getPayment(),FontFactory.getFont(FontFactory.HELVETICA, 10)));
  
  /*table.addCell(bid);
  table.addCell(dod);

  table.addCell(nop);
  table.addCell(pay);*/
  
  
  
  
  document.add(bid);
  document.add(dod);
  document.add(nop);
  document.add(pay);
  }
 
  
  
  document.add(table);
  
  Paragraph header2 = new Paragraph(new Chunk("User Details",FontFactory.getFont(FontFactory.HELVETICA, 15,Font.BOLD, new Color(255, 0,0))));
  document.add(header2);
 
  Table tableU = new Table(7);
  //PdfPCell cell = new PdfPCell( header);
 
  

  
  
  Paragraph header5 = new Paragraph(new Chunk("Fname",FontFactory.getFont(FontFactory.HELVETICA, 12,Font.BOLD)));
  //tableU.addCell(header5);
  Cell cell31 = new Cell();
  cell31.addElement(header5);
  cell31.setHorizontalAlignment(Element.ALIGN_CENTER);
  tableU.addCell(cell31);
  
  Paragraph header6 = new Paragraph(new Chunk("Mname",FontFactory.getFont(FontFactory.HELVETICA, 12,Font.BOLD)));
  //tableU.addCell(header6);
  Cell cell32 = new Cell();
  cell32.addElement(header6);
  cell32.setHorizontalAlignment(Element.ALIGN_CENTER);
  tableU.addCell(cell32);
  

  Paragraph header7 = new Paragraph(new Chunk("Lname",FontFactory.getFont(FontFactory.HELVETICA, 12,Font.BOLD)));
  //tableU.addCell(header7); 
  Cell cell33 = new Cell();
  cell33.addElement(header7);
  cell33.setHorizontalAlignment(Element.ALIGN_CENTER);
  tableU.addCell(cell33);
  
  Paragraph header8 = new Paragraph(new Chunk("Email",FontFactory.getFont(FontFactory.HELVETICA, 12,Font.BOLD)));
  //tableU.addCell(header8);
  Cell cell34 = new Cell();
  cell34.addElement(header8);
  cell34.setHorizontalAlignment(Element.ALIGN_CENTER);
  tableU.addCell(cell34);

  Paragraph header9 = new Paragraph(new Chunk("Flatno",FontFactory.getFont(FontFactory.HELVETICA, 12,Font.BOLD)));
  //tableU.addCell(header9);
  Cell cell35 = new Cell();
  cell35.addElement(header9);
  cell35.setHorizontalAlignment(Element.ALIGN_CENTER);
  tableU.addCell(cell35);
  
  Paragraph header10 = new Paragraph(new Chunk("City",FontFactory.getFont(FontFactory.HELVETICA, 12,Font.BOLD)));
  //tableU.addCell(header10);
  Cell cell36 = new Cell();
  cell36.addElement(header10);
  cell36.setHorizontalAlignment(Element.ALIGN_CENTER);
  tableU.addCell(cell36);
  

  Paragraph header17 = new Paragraph(new Chunk("Pincode",FontFactory.getFont(FontFactory.HELVETICA, 12,Font.BOLD)));
  //tableU.addCell(header17);
  Cell cell37 = new Cell();
  cell37.addElement(header17);
  cell37.setHorizontalAlignment(Element.ALIGN_CENTER);
  tableU.addCell(cell37);



  

List<userdetail> userlist = (List<userdetail>) model.get("udlist");
  Iterator<userdetail> uditr=userlist.iterator();
  while(uditr.hasNext())
 {

		 
	  DateTimeFormatter dtf = DateTimeFormatter.ofPattern("dd/MM/yyyy"); 
	   LocalDateTime now = LocalDateTime.now();
	  userdetail temp2=(userdetail)uditr.next();
	 
	  Integer a=temp2.getFlatno();
	  String ss=a.toString();
	  Integer ab=temp2.getPincode();
	  String ss1=ab.toString();
	  
	  Paragraph fname = new Paragraph(new Chunk(temp2.getFname(),FontFactory.getFont(FontFactory.HELVETICA, 10)));
	  Paragraph mname = new Paragraph(new Chunk(temp2.getMname(),FontFactory.getFont(FontFactory.HELVETICA,10)));
	  Paragraph lname = new Paragraph(new Chunk(temp2.getLname(),FontFactory.getFont(FontFactory.HELVETICA, 10)));
	  Paragraph email = new Paragraph(new Chunk(temp2.getEmail(),FontFactory.getFont(FontFactory.HELVETICA, 10)));
	  Paragraph flatno = new Paragraph(new Chunk(ss,FontFactory.getFont(FontFactory.HELVETICA, 10)));
	  Paragraph city = new Paragraph(new Chunk(temp2.getCity(),FontFactory.getFont(FontFactory.HELVETICA, 10)));
	  Paragraph pincode = new Paragraph(new Chunk(ss1,FontFactory.getFont(FontFactory.HELVETICA, 10)));
	  
	  
	  Cell cell21 = new Cell();
	  cell21.addElement(fname);
	  cell21.setHorizontalAlignment(Element.ALIGN_CENTER);
	  tableU.addCell(cell21);
	  
	  
	  Cell cell22 = new Cell();
	  cell22.addElement(mname);
	  cell22.setHorizontalAlignment(Element.ALIGN_CENTER);
	  tableU.addCell(cell22);
	  
	  Cell cell23 = new Cell();
	  cell23.addElement(lname);
	  cell23.setHorizontalAlignment(Element.ALIGN_CENTER);
	  tableU.addCell(cell23);
	  
	  Cell cell24 = new Cell();
	  cell24.addElement(email);
	  cell24.setHorizontalAlignment(Element.ALIGN_CENTER);
	  tableU.addCell(cell24);
	  
	  Cell cell25 = new Cell();
	  cell25.addElement(flatno);
	  cell25.setHorizontalAlignment(Element.ALIGN_CENTER);
	  tableU.addCell(cell25);
	  
	  
	  Cell cell26 = new Cell();
	  cell26.addElement(city);
	  cell26.setHorizontalAlignment(Element.ALIGN_CENTER);
	  tableU.addCell(cell26);
	  
	  Cell cell27 = new Cell();
	  cell27.addElement(pincode);
	  cell27.setHorizontalAlignment(Element.ALIGN_CENTER);
	  tableU.addCell(cell27);
	
  }
  document.add(tableU);
	
 /* //pax details
  //changes team 2 pax detail
  Paragraph header21 = new Paragraph(new Chunk("Pax Details",FontFactory.getFont(FontFactory.HELVETICA, 15,Font.BOLD,new Color(255, 0,0))));
  document.add(header21);
  
  Table tablepax = new Table(4);
  //PdfPCell cell = new PdfPCell( header);
 
  Paragraph header22 = new Paragraph(new Chunk("Name",FontFactory.getFont(FontFactory.HELVETICA, 12,Font.BOLD)));
//  tablepax.addCell(header22);
  Cell cell41 = new Cell();
  cell41.addElement(header22);
  cell41.setHorizontalAlignment(Element.ALIGN_CENTER);
  tablepax.addCell(cell41);
  
  Paragraph header23 = new Paragraph(new Chunk("Age",FontFactory.getFont(FontFactory.HELVETICA, 12,Font.BOLD)));
  //tablepax.addCell(header23);
  Cell cell42 = new Cell();
  cell42.addElement(header23);
  cell42.setHorizontalAlignment(Element.ALIGN_CENTER);
  tablepax.addCell(cell42);
  
  Paragraph header24 = new Paragraph(new Chunk("Cost",FontFactory.getFont(FontFactory.HELVETICA, 12,Font.BOLD)));
  //tablepax.addCell(header24);
  Cell cell43 = new Cell();
  cell43.addElement(header24);
  cell43.setHorizontalAlignment(Element.ALIGN_CENTER);
  tablepax.addCell(cell43);
  
  Paragraph header25 = new Paragraph(new Chunk("Gender",FontFactory.getFont(FontFactory.HELVETICA, 12,Font.BOLD)));
 // tablepax.addCell(header25);
  Cell cell44 = new Cell();
  cell44.addElement(header25);
  cell44.setHorizontalAlignment(Element.ALIGN_CENTER);
  tablepax.addCell(cell44);
  
  
Iterator<paxdetail> itr1=pdlist.iterator();
 
  
  while(itr1.hasNext())
  {
	  
	  paxdetail temp3=(paxdetail)itr1.next();
		
	  Integer a=temp3.getAge();
	  String ss=a.toString();

	 
	  
	  
	
  Paragraph bname = new Paragraph(new Chunk(temp3.getName(),FontFactory.getFont(FontFactory.HELVETICA, 10)));
  Paragraph age = new Paragraph(new Chunk(ss,FontFactory.getFont(FontFactory.HELVETICA, 10)));
  
  Paragraph gender = new Paragraph(new Chunk(temp3.getGender(),FontFactory.getFont(FontFactory.HELVETICA, 10)));
  Cell cell12 = new Cell();
  
  cell12.addElement(bname);
  cell12.setHorizontalAlignment(Element.ALIGN_CENTER);
  tablepax.addCell(cell12);
  
Cell cell13 = new Cell();
cell13.addElement(bname);
cell13.setHorizontalAlignment(Element.ALIGN_CENTER);
  
  
  tablepax.addCell(cell13);
Cell cell14 = new Cell();
  
  cell14.addElement(bname);
  cell14.setHorizontalAlignment(Element.ALIGN_CENTER);
  
  
  
  tablepax.addCell(cell14);
  
Cell cell15 = new Cell();
  
  cell15.addElement(bname);
  cell15.setHorizontalAlignment(Element.ALIGN_CENTER);
  
  tablepax.addCell(cell15);
  
  }
 
  document.add(tablepax);
  */
  
  
  Paragraph header21 = new Paragraph(new Chunk("",FontFactory.getFont(FontFactory.HELVETICA, 15,Font.BOLD,new Color(255, 0,0))));
  document.add(header21);
  
  Table tablepax = new Table(4);
  
  
  
  Paragraph header22 = new Paragraph(new Chunk("BookingId",FontFactory.getFont(FontFactory.HELVETICA, 12,Font.BOLD)));
//tablepax.addCell(header22);
Cell cell41 = new Cell();
cell41.addElement(header22);
cell41.setHorizontalAlignment(Element.ALIGN_CENTER);
tablepax.addCell(cell41);

Paragraph header23 = new Paragraph(new Chunk("NumberOFPassenger",FontFactory.getFont(FontFactory.HELVETICA, 12,Font.BOLD)));
//tablepax.addCell(header23);
Cell cell42 = new Cell();
cell42.addElement(header23);
cell42.setHorizontalAlignment(Element.ALIGN_CENTER);
tablepax.addCell(cell42);

Paragraph header24 = new Paragraph(new Chunk("TotalAmount",FontFactory.getFont(FontFactory.HELVETICA, 12,Font.BOLD)));
//tablepax.addCell(header24);
Cell cell43 = new Cell();
cell43.addElement(header24);
cell43.setHorizontalAlignment(Element.ALIGN_CENTER);
tablepax.addCell(cell43);

Paragraph header25 = new Paragraph(new Chunk("DateOfDeparture",FontFactory.getFont(FontFactory.HELVETICA, 12,Font.BOLD)));
// tablepax.addCell(header25);
Cell cell44 = new Cell();
cell44.addElement(header25);
cell44.setHorizontalAlignment(Element.ALIGN_CENTER);
tablepax.addCell(cell44);




booking bookob = (booking) model.get("bookob");

Integer a=bookob.getBookingid();
String ss=a.toString();



Double b=bookob.getPayment();
String ss1=b.toString();
Paragraph bid = new Paragraph(new Chunk(bookob.getBookingid().toString(),FontFactory.getFont(FontFactory.HELVETICA, 10)));
Paragraph pass = new Paragraph(new Chunk(ss,FontFactory.getFont(FontFactory.HELVETICA, 10)));


Paragraph pay = new Paragraph(new Chunk(ss1,FontFactory.getFont(FontFactory.HELVETICA, 10)));


Paragraph dd = new Paragraph(new Chunk(bookob.getDateofdeparture(),FontFactory.getFont(FontFactory.HELVETICA, 10)));
  









 }
 

 }

