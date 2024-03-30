import Foundation

public enum Media {}

public extension Media {
    enum `Type`: String, Codable, Equatable {
        case photo, video
    }
    
    enum Upload {
        public struct Request: Codable, Equatable {
            public let data: Data
            public let ext: String
            public let type: `Type`
            
            public init(
                data: Data,
                ext: String,
                type: `Type`
            ) {
                self.data = data
                self.ext = ext
                self.type = type
            }
        }
        
        public struct Response: Codable, Equatable {
            public let id: UUID
            public let type: `Type`

            public init(
                id: UUID,
                type: `Type`
            ) {
                self.id = id
                self.type = type
            }
        }
    }
    
    enum Download {
        public struct Request: Codable, Equatable {
            public let id: UUID
            
            public init(id: UUID) {
                self.id = id
            }
        }
        
        public struct Response: Codable, Equatable {
            public let data: Data
            
            public init(data: Data) {
                self.data = data
            }
        }
    }
}
