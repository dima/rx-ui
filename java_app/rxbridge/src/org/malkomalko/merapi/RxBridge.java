package org.malkomalko.merapi;

import java.io.*;
import java.util.*;
import merapi.Bridge;

public class RxBridge {

	public static void main(String[] args) throws IOException {
		
		Bridge bridge = Bridge.getInstance();
	    RxMessageHandler handler = new RxMessageHandler();
	    bridge.registerMessageHandler("RunScript", handler);
	    
		File f1 = new File (".");
		String AIR_APP_NAME = f1.getCanonicalPath() + "/" + "RxUi-Launcher.app/RxUi.app/Contents/MacOS/RxUi"; 
//		String AIR_APP_NAME = f1.getCanonicalPath() + "/" + "RxUi.app/Contents/MacOS/RxUi";
		
        int exitStatus = -1; 
        try {
            Process process = Runtime.getRuntime().exec( new String[] { AIR_APP_NAME }); 
 
            exitStatus = process.waitFor(); 
        } catch (IOException e) { 
            System.err.println(String.format("Unable to launch AIR application: %s", AIR_APP_NAME)); 
            e.printStackTrace(); 
 
        } catch (InterruptedException e) { 
            System.err.println("Got interrupted while waiting for AIR application to terminate"); 
            e.printStackTrace(); 
        } finally { 
            System.exit(exitStatus); 
        }
	}

}
