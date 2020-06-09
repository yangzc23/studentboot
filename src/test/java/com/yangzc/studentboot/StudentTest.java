package com.yangzc.studentboot;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClients;

/**
 * @Author: yangzc
 * @Description:
 * @Date: Created on 8:04 2020/6/9
 * @Modified By:
 */
public class StudentTest {
    public static void main(String[] args) {
        //创建可关闭的客户端工具
        CloseableHttpClient c1 = HttpClients.createDefault();
        CloseableHttpClient c2 = HttpClients.createDefault();

        HttpPost r1 = new HttpPost("http://192.168.18.107:8080/stu/list/save");
        HttpPost r2 = new HttpPost("http://192.168.18.107:8080/stu/list/save");

        String data = "sno=&sname=%E5%BC%A0%E4%B8%89&gender=1&birth=2020-06-08&phone=17721038958&photoUrl=%2Fimg%2Fdefault.png";

        StringEntity requestEntity = new StringEntity(data,"utf-8");

        r1.addHeader("Content-type","application/x-www-form-urlencoded");
        r1.addHeader("Cookie","JSESSIONID=5010b0b0-1ee1-4448-9edf-b3abe3cd61b8");
        r1.setEntity(requestEntity);

        r2.addHeader("Content-type","application/x-www-form-urlencoded");
        r2.addHeader("Cookie","JSESSIONID=5010b0b0-1ee1-4448-9edf-b3abe3cd61b8");
        r2.setEntity(requestEntity);

        Thread t1 = new MyThread(c1,r1);
        Thread t2 = new MyThread(c2,r2);

        t1.start();
        t2.start();
        //c1.close();
        //c2.close();
        //System.out.println("Hello World!");
    }
}



