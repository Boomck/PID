package Servlet;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.io.FileInputStream;

import Dao.FriendsStoryDao;
import Entity.FriendsStory;
import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.ProgressListener;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

@WebServlet("/Servlet_addfriendstory")
public class Servlet_addfriendstory extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");

        String title_f = null , text_f = null, source_f = null,filesqlname=null;
//        title_f=request.getParameter("title_f");
//        text_f=request.getParameter("text_f");
//        source_f=request.getParameter("source_f");
        Date day=new Date();
        SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        // 步骤1：设置服务器存储文件的文件夹位置(存储路径)
        String fileUploadPath = this.getServletContext().getRealPath("pidimg/");
        System.out.println(ServletFileUpload.isMultipartContent(request));


        // 步骤2：创建系统文件上传的临时缓冲区目录
        File fileUploadTempPath = new File(this.getServletContext().getRealPath("/tmp/"));
        if (!fileUploadTempPath.exists()) {
            fileUploadTempPath.mkdir();
        }
        // 步骤3：解析客户端请求，判断表单提交是否为二进制模式
        boolean isMultipart = ServletFileUpload.isMultipartContent(request);
        System.out.println(isMultipart);

        if (isMultipart) {
            // 步骤4：创建临时缓冲区的逻辑结构(DiskFileItemFactory对象)
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
                        if("title_f".equals(name))
                        {
                            title_f = fileItem.getString();
                            title_f = new String(title_f.getBytes("iso8859-1"),"utf-8");
                        }
                        if("text_f".equals(name))
                        {
                            text_f = fileItem.getString();
                            text_f = new String(text_f.getBytes("iso8859-1"),"utf-8");
                        }
                        if("source_f".equals(name))
                        {
                            source_f = fileItem.getString();
                            source_f = new String(source_f.getBytes("iso8859-1"),"utf-8");
                        }
                    }
                    else {
                        String type = fileItem.getName().trim().substring(fileItem.getName().trim().indexOf("."));
                        filesqlname = "bingyougushihui_"+System.currentTimeMillis()+".jpg";
                        File saveFile = new File(fileUploadPath, filesqlname);
                        fileItem.write(saveFile);
                    }
                }
                FriendsStoryDao friendsStoryDao=new FriendsStoryDao();
                String savename="/pidimg/"+filesqlname;
                friendsStoryDao.addfriendsstory(title_f,text_f,savename,df.format(day),source_f);
            } catch (FileUploadException e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            }
            catch (Exception e) {
                // TODO Auto-generated catch block
                e.printStackTrace();
            } finally {
                request.getRequestDispatcher("/Servlet_select_friendstory").forward(request, response);
            }

        }



    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doPost(request, response);
    }
}
