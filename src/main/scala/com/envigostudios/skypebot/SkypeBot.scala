package com.envigostudios.skypebot

import com.skype.Chat
import com.skype.ChatMessage;
import com.skype.ChatMessageListener;
import com.skype.Skype;
import com.skype.Chat;
import com.skype.SkypeException
import com.skype.connector.{ConnectorStatusEvent, ConnectorMessageEvent, ConnectorListener, Connector}
import scalaj.collection.Imports._


object SkypeBot extends App {
  println("Echo" + (args mkString " "))
  Skype.addChatMessageListener(new SampleChatMessageListener);
  Connector.getInstance().addConnectorListener(new MyConnectorListener)

//  val chats = Skype.getAllChats.asScala


  Skype.setDebug(true)
  Skype.setDeamon(false)


  //  Connector.getInstance().addConnectorListener(new ConnectorListener() {
  //    override def messageReceived(event: ConnectorMessageEvent) {
  //    System.out.println(event.getMessage())
  //  }
}

class MyConnectorListener extends ConnectorListener {
  def messageReceived(event: ConnectorMessageEvent) {
    println("Message source: " + event.getMessage)
  }

  def messageSent(p1: ConnectorMessageEvent) {}

  def statusChanged(p1: ConnectorStatusEvent) {}
}

class SampleChatMessageListener extends ChatMessageListener {


  override def chatMessageReceived(message: ChatMessage) {
    try {
      println("Chat message received!")
      val chat: Chat = message.getChat
      chat.send("Talk to the hand!")
    }
    catch {
      case _ => {
        println("An exception occurred")
      }
    }

  }

  //    try {
  //      val chat: Chat = message.getChat()
  //
  //      chat.send("Talk to the hand!")
  //    } catch {
  //
  //    case => e: SkypeException {}
  //      e.printStackTrace();
  //    }

  //  }

  override def chatMessageSent(message: ChatMessage) {}

}


