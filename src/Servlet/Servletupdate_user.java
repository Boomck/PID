package Servlet;

import Dao.FriendsStoryDao;
import Dao.LoginDao;
import Entity.User_c;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

@WebServlet("/Servletupdate_user")
public class Servletupdate_user extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        String username=null,name_=null,password=null,mail=null,phone=null,qqnumber=null,wechatnumber=null,filesqlname=null;
        String url=null;
        String savename=null;
        User_c user_c= new User_c();
        LoginDao loginDao=new LoginDao();
        int target=0;
        HttpSession session = request.getSession();
        Date day=new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String fileUploadPath = this.getServletContext().getRealPath("pidimg/");
        File fileUploadTempPath = new File(this.getServletContext().getRealPath("/tmp/"));
        if (!fileUploadTempPath.exists()) {
            fileUploadTempPath.mkdir();
        }
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        if (isMultipart) {
            DiskFileItemFactory factory = new DiskFileItemFactory();
            // 步骤4-1：设置缓冲区的物理位置，并将其与逻辑结构绑定
            factory.setRepository(fileUploadTempPath);
            // 步骤4-2：设置缓冲区的大小（单位：字节）
            factory.setSizeThreshold(1024 * 1024 * 4);

            // 步骤5：创建ServletFileUpload对象，用于存放表单中的所有数据，并将其封装到一个集合对象中
            ServletFileUpload sfu = new ServletFileUpload(factory);
            try {
                // 步骤6：创建一个局部的List集合，用于接收sfu对象自动封装的集合
                List<FileItem> listFileItems = sfu.parseRequest(request);
                // 步骤7：使用循环遍历访问集合中的数据
                for (FileItem fileItem : listFileItems) {
                    // 扩展点4：获取上传表单中的非文件数据
                    if (fileItem.isFormField()) {
                        //扩展点4-1：获取该输入元素的name属性
                        String name = fileItem.getFieldName();
//                        String name = fileItem.getString().trim();
                        if("username".equals(name))
                        {
                            username = fileItem.getString();
                            username = new String(username.getBytes("iso8859-1"),"utf-8");
                        }
                        if("name".equals(name))
                        {
                            name_ = fileItem.getString();
                            name_ = new String(name_.getBytes("iso8859-1"),"utf-8");
                        }
                        if("password".equals(name))
                        {
                            password = fileItem.getString();
                            password = new String(password.getBytes("iso8859-1"),"utf-8");
                        }
                        if("mail".equals(name))
                        {
                            mail = fileItem.getString();
                            mail = new String(mail.getBytes("iso8859-1"),"utf-8");
                        }
                        if("phone".equals(name))
                        {
                            phone = fileItem.getString();
                            phone = new String(phone.getBytes("iso8859-1"),"utf-8");
                        }
                        if("qqnumber".equals(name))
                        {
                            qqnumber = fileItem.getString();
                            qqnumber = new String(qqnumber.getBytes("iso8859-1"),"utf-8");
                        }
                        if("wechatnumber".equals(name))
                        {
                            wechatnumber = fileItem.getString();
                            wechatnumber = new String(wechatnumber.getBytes("iso8859-1"),"utf-8");
                        }
                    }
                    else {
                        if(fileItem.getSize()==0){
                            target=0;
                        }
                        else{
                            target=1;
                            String type = fileItem.getName().trim().substring(fileItem.getName().trim().indexOf("."));
                            filesqlname = "touxiang_"+System.currentTimeMillis()+".jpg";
                            File saveFile = new File(fileUploadPath, filesqlname);
                            fileItem.write(saveFile);
                        }
                    }
                }
                if(target==1){
                     savename="/pidimg/"+filesqlname;
                    loginDao.updateuser(username,name_,password,mail,phone,qqnumber,wechatnumber,savename);
                }
                else{
                    loginDao.updateuser_withoutimg(username,name_,password,mail,phone,qqnumber,wechatnumber);
                }

            } catch (FileUploadException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            catch (Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } finally {
                session.removeAttribute("user");
                user_c = loginDao.Login(username,password);
                session.setAttribute("user",user_c);
                request.getRequestDispatcher("person.jsp").forward(request,response);
            }

        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
