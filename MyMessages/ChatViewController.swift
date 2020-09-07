//
//  ChatViewController.swift
//  MyMessages
//
//  Created by JOEL CRAWFORD on 9/7/20.
//  Copyright © 2020 JOEL CRAWFORD. All rights reserved.
//

import UIKit
import MessageKit

struct Sender: SenderType {
    var senderId: String
    
    var displayName: String
    
}

struct Message: MessageType {
    var sender: SenderType
    var messageId: String
    var sentDate: Date
    
    var kind: MessageKind
    
    
}

class ChatViewController: MessagesViewController, MessagesDataSource, MessagesLayoutDelegate, MessagesDisplayDelegate {
    
    let currentUser = Sender(senderId: "self", displayName: "iOS Academy")
    
    let otherUser = Sender(senderId: "other", displayName: "Joel RTS")
    
//    //let messages: [MessageType] = [
//
//        Message(sender: <#SenderType#>, messageId: <#String#>, sentDate: <#Date#>, kind: <#MessageKind#>)
//
//
//    ]
    
    var messages =  [MessageType]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        messages.append(Message(sender: currentUser,
                                messageId: "1", sentDate: Date().addingTimeInterval(-86400),
                                kind: .text("Hello world")))
        
        messages.append(Message(sender: otherUser,
                                              messageId: "2", sentDate: Date().addingTimeInterval(-70000),
                                              kind: .text("How is the going?")))
        
        messages.append(Message(sender: currentUser,
                                       messageId: "3", sentDate: Date().addingTimeInterval(-66400),
                                       kind: .text("The going is alright, whtasaap?")))
        
        messages.append(Message(sender: otherUser,
                                       messageId: "4", sentDate: Date().addingTimeInterval(-56400),
                                       kind: .text("Thats good to know, I am fine too!....Thats good to know, I am fine too!")))
        
        messages.append(Message(sender: otherUser,
                                       messageId: "5", sentDate: Date().addingTimeInterval(-46400),
                                       kind: .text("What are you upto?")))
        
        messages.append(Message(sender: currentUser,
                                              messageId: "6", sentDate: Date().addingTimeInterval(-36400),
                                              kind: .text("Alot interesting ....")))
        
        

        // Do any additional setup after loading the view.
        
        messagesCollectionView.messagesDataSource = self
        messagesCollectionView.messagesLayoutDelegate = self
        messagesCollectionView.messagesDisplayDelegate = self
        
        //aplly font size when we used text based
          //messagesCollectionView.messagesLayoutDelegate
        
    }
    
    
    
    
    func currentSender() -> SenderType {
        
        return currentUser
    }
    
    func messageForItem(at indexPath: IndexPath, in messagesCollectionView: MessagesCollectionView) -> MessageType {
        return messages[indexPath.section]
    }
    
    func numberOfSections(in messagesCollectionView: MessagesCollectionView) -> Int {
        
        return messages.count
        
    
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
