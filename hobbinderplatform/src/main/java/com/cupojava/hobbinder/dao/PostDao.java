package com.cupojava.hobbinder.dao;

import java.util.List;

import com.cupojava.hobbinder.model.Post;

public interface PostDao {
	Post findPostByCode(int postID);
	List<Post> findPostsByCommunity(int communityID);
	int createPost(String title, String content, String date, int communityID, int authorID);
	List<Post> findRandomPosts(int i);
}
