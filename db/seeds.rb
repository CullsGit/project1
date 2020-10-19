User.destroy_all
u1 = User.create :name => 'Cull', :email => 'hugo.cullinan@hotmail.com'
u2 = User.create :name => 'Chump', :email => 'chump@ga.co'
puts "#{ User.count } users."

Post.destroy_all
p1 = Post.create :title => 'Shrimp Head', :body => 'The heart of a shrimp is located in its head.'
p2 = Post.create :title => 'Sleepy Snail', :body => 'A snail can sleep for three years.'
p3 = Post.create :title => 'Grounded Giants', :body => 'Elephants are the only animal that can\'t jump.'
p4 = Post.create :title => 'Poisoned Grog', :body => 'The government literally poisoned alcohol during prohibition.'
p5 = Post.create :title => 'Cleopatra Myth', :body => 'Cleopatra was not Egyptian, she was Greek.'
p6 = Post.create :title => 'Shifting Continents', :body => 'Continents shift at about the same rate as your fingernails grow.'
p7 = Post.create :title => 'Human Population', :body => 'Ninety percent of Earth\'s population lives in the Northern Hemisphere.'
p8 = Post.create :title => 'Feathery Ball', :body => 'Golf balls were once made of leather and feathers.'
p9 = Post.create :title => 'The Raven', :body => 'Edgar Allan Poe originally wanted a parrot to repeat the word "nevermore."'
p10 = Post.create :title => 'Charles Dickens', :body => 'Charles Dickens believed in the supernatural, and he belonged to something called The Ghost Club.'
p11 = Post.create :title => 'Unusual Oscar Winner', :body => 'The first non-human to win an Oscar was Mickey Mouse.'
p12 = Post.create :title => 'Winnie the Pooh', :body => 'All the characters from Winnie the Pooh represented mental disorder. Winnie portrayed an eating disorder.'
puts "#{ Post.count } posts."

Subject.destroy_all
s1 = Subject.create :name => 'Geography'
s2 = Subject.create :name => 'Entertainment'
s3 = Subject.create :name => 'History'
s4 = Subject.create :name => 'Arts & Literature'
s5 = Subject.create :name => 'Science & Nature'
s6 = Subject.create :name => 'Sports & Leisure'
puts "#{ Subject.count } subjects."

Comment.destroy_all
c1 = Comment.create :body => 'Wow, that\'s amazing.'
c2 = Comment.create :body => 'Average content.'
c3 = Comment.create :body => 'Who would have thought.'
c4 = Comment.create :body => 'Surely this isn\'t true.'
c5 = Comment.create :body => 'Amazing!'
c6 = Comment.create :body => 'Awesome'
c7 = Comment.create :body => 'Hahaha you\'re kidding.'
c8 = Comment.create :body => 'Omg'
puts "#{ Comment.count } comments."

puts "User and posts"
u1.posts << p1 << p2 << p4 << p6 << p7 << p9 << p10 << p11
u2.posts << p3 << p5 << p8 << p12

puts "Post and comments"
p1.comments << c1
p3.comments << c2
p4.comments << c4 << c5
p5.comments << c3
p7.comments << c6
p11.comments << c7
p12.comments << c8

puts "Subject and posts"
s1.posts << p6 << p7
s2.posts << p11 << p12
s3.posts << p4 << p5
s4.posts << p9 << p10
s5.posts << p1 << p2 << p3
s6.posts << p8

puts "User and comments"
u1.comments << c2 << c3 << c8
u2.comments << c1 << c4 << c5 << c6 << c7  
