package com.xh.util;

import java.awt.*;
import java.awt.image.BufferedImage;
import java.util.Random;

public class SecurityImage {
    /**
     * 锟斤拷锟斤拷锟街わ拷锟酵计�

     * @param securityCode

     * @return

     */
    public static BufferedImage createImage(String securityCode){

         

        int codeLength = securityCode.length();//锟斤拷证锟诫长锟斤拷

        int fontSize = 15;//锟斤拷锟斤拷锟叫�

        int fontWidth = fontSize+1;

         

        //图片锟斤拷锟�

        int width = codeLength*fontWidth+6;

        int height = fontSize*2+1;

        //图片

        BufferedImage image = new BufferedImage(width, height, BufferedImage.TYPE_INT_RGB);

        Graphics2D g = image.createGraphics();

        g.setColor(Color.WHITE);//锟斤拷锟矫憋拷锟斤拷色

        g.fillRect(0, 0, width, height);//锟斤拷浔筹拷锟�

        g.setColor(Color.LIGHT_GRAY);//锟斤拷锟矫边匡拷锟斤拷色

        g.setFont(new Font("Arial", Font.BOLD, height-2));//锟竭匡拷锟斤拷锟斤拷锟斤拷式

        g.drawRect(0, 0, width-1, height-1);//锟斤拷锟狡边匡拷

        //锟斤拷锟斤拷锟斤拷锟�

        Random rand = new Random();

        g.setColor(Color.LIGHT_GRAY);

        for (int i = 0; i < codeLength*6; i++) {

            int x = rand.nextInt(width);

            int y = rand.nextInt(height);

            g.drawRect(x, y, 1, 1);//锟斤拷锟斤拷1*1锟斤拷小锟侥撅拷锟斤拷

        }

        //锟斤拷锟斤拷锟斤拷证锟斤拷

        int codeY = height-10;

        g.setColor(new Color(19,148,246));

        g.setFont(new Font("Georgia", Font.BOLD, fontSize));
        for(int i=0;i<codeLength;i++){
        	double deg=new Random().nextDouble()*20;
        	g.rotate(Math.toRadians(deg), i*16+13,codeY-7.5);
            g.drawString(String.valueOf(securityCode.charAt(i)), i*16+5, codeY);
            g.rotate(Math.toRadians(-deg), i*16+13,codeY-7.5);
        }
       
        g.dispose();//锟截憋拷锟斤拷源

        return image;

    }

}
