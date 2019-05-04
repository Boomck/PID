package Servlet;

import Dao.FriendsStoryDao;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

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

@WebServlet("/Servlet_changefriendstory")
public class Servlet_changefriendstory extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // TODO Auto-generated method stub
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        int target=0;
        String title_f = null , text_f = null, source_f = null,filesqlname=null;
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
                        if(fileItem.getSize()==0){
                            target=0;
                        }
                        else{
                            target=1;
                            String type = fileItem.getName().trim().substring(fileItem.getName().trim().indexOf("."));
                            filesqlname = "bingyougushihui_"+System.currentTimeMillis()+".jpg";
                            File saveFile = new File(fileUploadPath, filesqlname);
                            fileItem.write(saveFile);
                        }
                    }
                }
                FriendsStoryDao friendsStoryDao=new FriendsStoryDao();
                if(target==1){
                    String savename="/pidimg/"+filesqlname;
                    friendsStoryDao.changefriendstory(title_f,text_f,savename,df.format(day),source_f);
                }
                else{
                    friendsStoryDao.changefriendstory_withoutimgae(title_f,text_f,df.format(day),source_f);
                }
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
