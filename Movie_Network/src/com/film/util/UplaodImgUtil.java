package com.film.util;

import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.UUID;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;


public class UplaodImgUtil {
	public static String uplaodImg(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{
		Part part = request.getPart("img_url");
        String disposition = part.getSubmittedFileName();
        String suffix = disposition.substring(disposition.lastIndexOf("."));
        //随机的生存一个32的字符串
        String filename = UUID.randomUUID()+suffix;
        //获取上传的文件名
        InputStream is = part.getInputStream();
        //动态获取服务器的路径  getRealPath 获取根目录下的文件或文件夹的真实路径  前面必须加根号
        String realPath = request.getServletContext().getRealPath("/upload");
        FileOutputStream fos = new FileOutputStream(realPath+"/"+filename);
        byte[] bty = new byte[1024];
        int length =0;
        while((length=is.read(bty))!=-1){
            fos.write(bty,0,length);
        }
        fos.close();
        is.close();
        String path=request.getScheme()+"://"+request.getHeader("host")+request.getContextPath()+"/upload/";
        return path+filename;
	}
}
