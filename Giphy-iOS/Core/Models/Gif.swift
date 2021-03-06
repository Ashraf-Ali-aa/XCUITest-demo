import Foundation


struct Gif: Codable {
    let images: Images
    let user: User?
}


extension Gif {
    struct Images: Codable {
        let downsizedLarge: ImageModel
        
        enum CodingKeys: String, CodingKey {
            case downsizedLarge = "downsized_large"
        }
    }
    
    struct User: Codable {
        let username: String
        let avatarUrl: String?
        
        enum CodingKeys: String, CodingKey {
            case username
            case avatarUrl = "avatar_url"
        }
    }
}


extension Gif.Images {
    struct ImageModel: Codable {
        let url: URL
        let height: String
        let width: String
    }
}
