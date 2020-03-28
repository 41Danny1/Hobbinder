package com.cupojava.hobbinder.dao;

import com.cupojava.hobbinder.model.Post;

public interface PostDao {
	Post findPostByCode(int postID);
	Post[] findPostsByCommunity(int communityID);
}
