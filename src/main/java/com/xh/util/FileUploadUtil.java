package com.xh.util;

import org.apache.commons.io.FileUtils;
import org.apache.commons.io.FilenameUtils;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.UUID;


public class FileUploadUtil {
	
	public static String uploadFile(String localPath,MultipartFile src, HttpServletRequest request) throws IOException {
		//获取文件上传路径
		String realPath = request.getSession().getServletContext().getRealPath(localPath);
		//获取文件名称
		String filename = src.getOriginalFilename();
		//获取文件后缀名
		String extension = FilenameUtils.getExtension(filename);
		//把-变成空格
		String newFileName= UUID.randomUUID().toString().replace("-","")+"."+extension;
		//生成日期目录
		String format = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
		//创建目录
		File file = new File(realPath,format);
		//检查目录是否存在  不存在创建目录
		if (!file.exists()) file.mkdirs();
		//上传到服务器
		src.transferTo(new File(file,newFileName));
		String FileName=format+"/"+newFileName;
		return FileName;
	} 
	public static void deleteFile(String localPath,String coverName,HttpServletRequest request){
		//删除原有封面
		String realPath=request.getSession().getServletContext().getRealPath(localPath);
		//拼接图片路径
		String coverPath=realPath+"\\"+coverName;  //1599450649835-ssj.jpg  1599450734491-1.jpg
		String message=null;
		File file = new File(coverPath);
		//判断文件存在，并且是一个文件
		if(file.exists() && file.isFile()){
			//删除文件
			boolean b = file.delete();
		}
	}

}
