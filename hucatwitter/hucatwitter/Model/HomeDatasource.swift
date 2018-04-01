//
//  HomeDatasource.swift
//  
//
//  Created by HungNV on 3/21/18.
//

import LBTAComponents

class HomeDatasource: Datasource {
    
    let users: [User] = {
        let hungUser = User(name: "Hùng Nguyễn", username: "@hungnv", bioText: "iPhone, iPad, iOS Programming Community. Join us to learn Swift, Objective-C and build iOS apps!", profileImage: #imageLiteral(resourceName: "avatar"))
        
        let brianUser = User(name: "Brian Voong", username: "@buildthatapp", bioText: "iPhone, iPad, iOS Programming Community. Join us to learn Swift, Objective-C and build iOS apps!", profileImage: #imageLiteral(resourceName: "brain"))
        
        let rayUser = User(name: "Ray Wenderlich", username: "@rwenderlich", bioText: "Ray Wenderlich is an iPhone developer and tweets on topics related to iPhone, software, and gaming. Check out our conference.", profileImage: #imageLiteral(resourceName: "ray"))
        
        let kindleCourseUser = User(name: "Kindle Course", username: "@kindleCourse", bioText: "This recently released course on http://videos.letsbuildthatapp.com/basic-training provides some excellent guidance on how to use UITableView and UICollectionView. Kindle Course is a Yank. She is sitting in the restaurant. She has just arrived to the Vietnam and walks to restaurant alone. She knows no one in Vietnam. Jane sits by herself. Jane is feeling lonely because she knows no one and has no friends in Vietnam. Quang walks in, orders his food. He sits at the table next Jane's. Quang begins a conversation with Jane. He ask question...", profileImage: #imageLiteral(resourceName: "avatar"))
        
        return [hungUser, brianUser, rayUser, kindleCourseUser]
    }()
    
    let tweets: [Tweet] = {
        let hungUser = User(name: "Hùng Nguyễn", username: "@hungnv", bioText: "iPhone, iPad, iOS Programming Community. Join us to learn Swift, Objective-C and build iOS apps!", profileImage: #imageLiteral(resourceName: "avatar"))
        let hungTweet = Tweet(user: hungUser, message: "Wellcome to episode 9 of the Tweeter Series, really hope you guys are enjoying the series so far. I really really need a long text block to render out so we're going to stop here.")
        
        let brianUser = User(name: "Brian Voong", username: "@buildthatapp", bioText: "iPhone, iPad, iOS Programming Community. Join us to learn Swift, Objective-C and build iOS apps!", profileImage: #imageLiteral(resourceName: "brain"))
        let brianTweet = Tweet(user: brianUser, message: "This is the second tweet message for our sample project. Very very exciting message...")
        
        return [hungTweet, brianTweet]
    }()
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self, TweetCell.self]
    }
    
    override func item(_ indexPath: IndexPath) -> Any? {
        if indexPath.section == 1 {
            return tweets[indexPath.item]
        }
        return users[indexPath.item]
    }
    
    override func numberOfSections() -> Int {
        return 2
    }
    
    override func numberOfItems(_ section: Int) -> Int {
        if section == 1 {
            return tweets.count
        }
        return users.count
    }
}
