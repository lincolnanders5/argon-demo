//
//  Post.swift
//  Travent
//
//  Created by Lincoln Anders on 2/9/22.
//

import SwiftUI
import Argon
import SerializedSwift

final class Post: ARModel {
    static var baseURL = "https://jsonplaceholder.typicode.com/posts"
    static var all: [Post]?
    
    @Serialized var userId: String
    @Serialized var title:  String
    @Serialized var body:   String
}

struct PostListItem: View {
    @State var post: Post
    var body: some View {
        VStack(alignment: .leading) {
            Text(post.title).fontWeight(.bold).lineLimit(1)
            Text(post.body).fontWeight(.light).lineLimit(1)
        }
    }
}

struct PostDetailView: View {
    @State var post: Post?
    var body: some View {
        VStack(alignment: .leading) {
            Text(post?.title ?? "Title").font(.title)
            HStack {
                Text("Created \(post?.createdAt?.relative ?? (Date.now - 10).relative)")
                Text("Updated \(post?.updatedAt?.relative ?? (Date.now - 4).relative)")
            }.padding()
            Text(post?.body ?? "body")
            Spacer()
        }
    }
}

struct PostListView: View {
    @State var posts: [Post]?
    
    var body: some View {
        ARList(posts, content: { p in
            NavigationLink(destination: PostDetailView(post: p))
                { PostListItem(post: p) }
        }, populate: { await Post.fetchInto(&posts) })
        .body.navigationTitle("All Posts")
    }
}

struct Post_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            PostListView()
        }
    }
}
