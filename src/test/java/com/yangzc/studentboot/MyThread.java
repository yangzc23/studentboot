package com.yangzc.studentboot;
import java.io.IOException;

import org.apache.http.HttpResponse;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.util.EntityUtils;
/**
 * @Author: yangzc
 * @Description:
 * @Date: Created on 8:08 2020/6/9
 * @Modified By:
 */
public class MyThread extends Thread {
    private CloseableHttpClient client;
    private HttpPost request;

    public MyThread(CloseableHttpClient client, HttpPost request) {
        this.client = client;
        this.request = request;
    }

    public void run(){
        try {
            HttpResponse response = client.execute(request);
            String text = EntityUtils.toString(response.getEntity());
            System.out.println(Thread.currentThread().getName()+": "+text);
            client.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }
}


