package org.malkomalko.merapi;

import java.io.*;
import java.util.*;
import merapi.Bridge;
import merapi.messages.IMessage;
import merapi.messages.IMessageHandler;
import merapi.messages.Message;

public class RxMessageHandler implements IMessageHandler {

	public void handleMessage(IMessage message) {
		try {
			String greeting = "Hello from Rx-Ui";
			System.out.print(greeting);
			
//			String shellScript = ((Message) message).getData().toString();
//		    String script = "tell application \"Terminal\" " + 
//				"to activate do script \"" + shellScript + "\" ";
//		    
//			String[] scriptArray = {"osascript", "-e", script};
//		    Runtime runtime = Runtime.getRuntime();
//		    Process process = runtime.exec(scriptArray);
		    
		} catch (Exception e) {
			System.out.print(e);
		}
	}

}