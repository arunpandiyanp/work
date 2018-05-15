//
//  ChatViewController.swift
//  FireChat
//
//  Created by Rk on 15/05/18.
//  Copyright © 2018 Rk. All rights reserved.
//

import UIKit
import Firebase
import FirebaseDatabase
import JSQMessagesViewController

class ChatViewController: JSQMessagesViewController {

    
    var messages = [JSQMessage]()
   //creating bubbles for incoming and outgoing messages
    lazy var outgoingBubble:JSQMessagesBubbleImage = {
        return JSQMessagesBubbleImageFactory().outgoingMessagesBubbleImage(with: UIColor.jsq_messageBubbleGreen())
    }()
    
    lazy var incomingBubble:JSQMessagesBubbleImage = {
        return JSQMessagesBubbleImageFactory().incomingMessagesBubbleImage(with: UIColor.jsq_messageBubbleBlue())
    }()
    
    
    
    //viewDidLoad
    
    override func viewDidLoad() {
        super.viewDidLoad()
        senderId = "1234"
        senderDisplayName = "Rakesh"
        collectionView.collectionViewLayout.incomingAvatarViewSize = CGSize.zero
        collectionView.collectionViewLayout.outgoingAvatarViewSize = CGSize.zero
        
        
        //for displaying messages ie, last certain numbers
        
        let query = Database.database().reference().child("chat").queryLimited(toFirst: 10)
        _ = query.observe(.childAdded, with: { [weak self] snapshot in
            if let data = snapshot.value as? [String:String],let id = data["sender_id"],let name = data["name"],let text = data["text"],!text.isEmpty{
                if let message = JSQMessage(senderId: id, displayName: name, text: text){
                    self?.messages.append(message)
                    self?.finishReceivingMessage()
                }
            }
            
            
        })
        
        
        // Do any additional setup after loading the view.
    }
    override func collectionView(_ collectionView: JSQMessagesCollectionView!, messageDataForItemAt indexPath: IndexPath!) -> JSQMessageData! {
        return messages[indexPath.row]
    }
    override func numberOfSections(in collectionView: UICollectionView) -> Int {
        return messages.count
    }
    
    //setting chat bubbles color
    override func collectionView(_ collectionView: JSQMessagesCollectionView!, messageBubbleImageDataForItemAt indexPath: IndexPath!) -> JSQMessageBubbleImageDataSource! {
        return messages[indexPath.row].senderId == senderId ? outgoingBubble:incomingBubble
    }
    
    
    //hiding avatars for each bubble
    override func collectionView(_ collectionView: JSQMessagesCollectionView!, avatarImageDataForItemAt indexPath: IndexPath!) -> JSQMessageAvatarImageDataSource! {
        return nil
    }
    
    //name of sender for each bubble
    
    override func collectionView(_ collectionView: JSQMessagesCollectionView!, attributedTextForMessageBubbleTopLabelAt indexPath: IndexPath!) -> NSAttributedString! {
        return messages[indexPath.row].senderId == senderId ? nil: NSAttributedString(string: messages[indexPath.row].senderDisplayName)
    }
    
    //height for top layout
    
    override func collectionView(_ collectionView: JSQMessagesCollectionView!, layout collectionViewLayout: JSQMessagesCollectionViewFlowLayout!, heightForCellTopLabelAt indexPath: IndexPath!) -> CGFloat {
        return messages[indexPath.row].senderId == senderId ? 0: 15
    }
    //function for sending meesges
    
    override func didPressSend(_ button: UIButton!, withMessageText text: String!, senderId: String!, senderDisplayName: String!, date: Date!) {
        let ref = Database.database().reference().child("chats").childByAutoId()
        let messages = ["sender_id": senderId , "sender_display_name": senderDisplayName , "message": text]
        ref.setValue(messages)
        collectionView.reloadData()
        finishSendingMessage()
    }
    
    
    
    
    
}
