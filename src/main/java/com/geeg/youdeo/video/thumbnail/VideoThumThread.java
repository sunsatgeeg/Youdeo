package com.geeg.youdeo.video.thumbnail;

import java.awt.image.BufferedImage;
import java.io.File;

import javax.imageio.ImageIO;

import org.jcodec.api.FrameGrab;
import org.jcodec.common.io.NIOUtils;
import org.jcodec.common.model.Picture;
import org.jcodec.scale.AWTUtil;

public class VideoThumThread extends Thread {
    private int threadNo;
    private int threadSize;
    private double plusSize;
    private File source;
    
    public VideoThumThread(File source, int threadSize, int threadNo, double plusSize) {
        this.source = source;
        this.threadSize = threadSize;
        this.threadNo = threadNo;
        this.plusSize = plusSize;
    }
 
    public void run() {
        FrameGrab grab;
        
        try {
            grab = FrameGrab.createFrameGrab(NIOUtils.readableChannel(source));
            
            if(1 % threadSize == threadNo) {
                double startSec = 0.01 * plusSize;
                
                int frameCount = 1;
                grab.seekToSecondPrecise(startSec);
                
                for (int i=0; i < frameCount; i++) {
                    Picture picture = grab.getNativeFrame();
                     
                    //for JDK (jcodec-javase)
                    BufferedImage bufferedImage = AWTUtil.toBufferedImage(picture);
                    ImageIO.write(bufferedImage, "png", new File(source.getPath().replace(".mp4", "") + "_i.png"));   
                }
            }
        } catch (Exception e1) {
            e1.printStackTrace();
        }            
    }
}

