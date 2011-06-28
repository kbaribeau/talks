

    describe Post do
      it "should allow adding comments" do
        post = Factory(:post)
        comment = Factory(:comment)

        post.add_comment(comment)

        post.comments.should include comment
        comment.post.should == post
      end
    end


    describe Post do
      it "should allow adding comments" do
        post = Post.new(:body => 'a blog post!')
        comment = Comment.new(:body => 'Wow!')

        post.add_comment(comment)

        post.comments.should include comment
        comment.post.should == post
      end
    end

    Factory.define :post, :class => Post do |post|
      post.body "a blog post!"
      post.comments { 
        [Factory.build(:comment), 
         Factory.build(:comment)] 
      }
    end

    Factory.define :comment, :class => Comment do |comment|
      comment.upvotes {
        [Factory.build(:upvote)]
      }
      comment.downvotes {
        [Factory.build(:downvote)]
      }
      comment.replies {
        ...
      }
    end


