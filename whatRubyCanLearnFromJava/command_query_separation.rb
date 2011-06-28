



      describe Comment do
        describe "sanitizing profanities" do
          it "replaces 'frak'" do
            comment = Factory(:comment)
            comment.body = "holy frak!"

            comment.sanitize!

            comment.body.should == "holy #^@$!"
          end
        end
      end



      describe Comment do
        describe "sanitizing profanities" do
          it "replaces 'frak'" do
            comment = Comment.new

            comment.sanitize_text("holy frak!").
              should == "holy #^@$!"
          end
        end
      end
