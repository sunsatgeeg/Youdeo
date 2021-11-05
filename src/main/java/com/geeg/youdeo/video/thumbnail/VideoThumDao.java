package com.geeg.youdeo.video.thumbnail;

import java.io.File;

public class VideoThumDao { 

    public void getThumbnail(File source) throws Exception {
        double plusSize = 1;
        int threadSize = 8;
     
        VideoThumThread[] videoThread = new VideoThumThread[threadSize];
     
        for(int i = 0; i < videoThread.length; i++) {
            videoThread[i] = new VideoThumThread(source, threadSize, i, plusSize);
            videoThread[i].start();
        }
        
        boolean runFlag = true;
        while(runFlag) {
            Thread.sleep(1000);
            
            runFlag = false;
            for(int i = 0; i < threadSize; i++) {
                if(videoThread[i].isAlive())
                    runFlag = true;
            }            
        }
    }
}
