package com.film.servlet;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileItemIterator;
import org.apache.commons.fileupload.FileItemStream;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
import org.apache.commons.fileupload.util.Streams;

import net.sf.json.JSONObject;

@WebServlet("/AjaxUploadPicture")
public class AjaxUploadPicture extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public AjaxUploadPicture() {
        super();
        // TODO Auto-generated constructor stub
    }
    public void destroy() {  
        super.destroy();   
    }  

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");     
        response.setCharacterEncoding("UTF-8");  
        String realDir = request.getSession().getServletContext().getRealPath("");  
        String contextpath = request.getContextPath();  
        String basePath = request.getScheme() + "://"+ request.getServerName() + ":" + request.getServerPort()+ contextpath + "/";  
        System.out.println(realDir);
        System.out.println(contextpath);
        System.out.println(basePath);
        try {  
	        String filePath = "upload";  
	        String realPath = realDir+"\\"+filePath;  
	        //创建存储文件的文件夹
	        File dir = new File(realPath);  
	        if(!dir.isDirectory())  
	            dir.mkdir();  
	  
	        if(ServletFileUpload.isMultipartContent(request)){  
	            DiskFileItemFactory dff = new DiskFileItemFactory();  
	            dff.setRepository(dir);  
	            dff.setSizeThreshold(1024000);  
	            ServletFileUpload sfu = new ServletFileUpload(dff);  
	            FileItemIterator fii = null;  
	            fii = sfu.getItemIterator(request);  
	            @SuppressWarnings("unused")
				String title = "";   //上传文件名称 
	            String url = "";    //上传文件路径
	            String fileName = "";  
	            @SuppressWarnings("unused")
				String state="SUCCESS";  
	            String realFileName="";  
	            while(fii.hasNext()){  
	                FileItemStream fis = fii.next();  
	                try{  
	                    if(!fis.isFormField() && fis.getName().length()>0){  
	                        fileName = fis.getName();  
	                        Pattern reg=Pattern.compile("[.]jpg|png|jpeg|gif$");  
	                        Matcher matcher=reg.matcher(fileName);  
	                        if(!matcher.find()) {  
	                            state = "上传文件格式不正确！";  
	                            break;  
	                        }  
	                        realFileName = new Date().getTime()+fileName.substring(fileName.lastIndexOf("."),fileName.length());  
	                        url = realPath+"\\"+realFileName;  
	  
	                        BufferedInputStream in = new BufferedInputStream(fis.openStream());//打开输出流
	                        FileOutputStream a = new FileOutputStream(new File(url));  
	                        BufferedOutputStream output = new BufferedOutputStream(a);  
	                        Streams.copy(in, output, true);//讲上传的文件复制到指定目录，true 覆盖上传
	                    }else{  
	                        String fname = fis.getFieldName();  
	                        if(fname.indexOf("pictitle")!=-1){  
	                            BufferedInputStream in = new BufferedInputStream(fis.openStream());  
	                            byte c [] = new byte[10];  
	                            int n = 0;  
	                            while((n=in.read(c))!=-1){  
	                                title = new String(c,0,n);  
	                                break;  
	                            }  
	                        }  
	                    }  
	  
	                }catch(Exception e){  
	                    e.printStackTrace();  
	                }  
	            }
	            HashMap<String, String> map=new HashMap<String, String>();
	            map.put("url", basePath+filePath+"/"+realFileName);
	            map.put("status", "success");
	            JSONObject json=JSONObject.fromObject(map);
	            response.getWriter().print(json);  
	        }  
        }catch(Exception ee) {  
            ee.printStackTrace();  
        }  
	}

}
