user1 = User.create! :name => 'Arnold', :email => 'arnold@mail.com', :password => 'asdf', :password_confirmation => 'asdf'
user2 = User.create! :name => 'Joey Stone', :email => 'j.stone@mail.com', :password => 'fdsa', :password_confirmation => 'fdsa'
user3 = User.create! :name => 'Guyman Dude', :email => 'guyman@dude.com', :password => '12345', :password_confirmation => '12345'

image1 = Image.create! :filename => 'DVCTZSSANHHVTQZ.jpg', :private => 'false', :user_id => 1
image2 = Image.create! :filename => 'GTXSZMAFBCUMUUA.jpg', :private => 'false', :user_id => 1
image3 = Image.create! :filename => 'GYAXKQNKSAQORLW.jpg', :private => 'false', :user_id => 1
image4 = Image.create! :filename => 'INLHHSCKLLRWJJD.jpg', :private => 'false', :user_id => 1
image5 = Image.create! :filename => 'JPYWJZKOWPYQSYE.jpg', :private => 'false', :user_id => 2
image6 = Image.create! :filename => 'POXYZSVLKUFABFR.jpg', :private => 'false', :user_id => 2
image7 = Image.create! :filename => 'PVBMGUZMXANMOGR.jpg', :private => 'false', :user_id => 2
image8 = Image.create! :filename => 'RUBKAHEQSOYOZFX.jpg', :private => 'false', :user_id => 3
image9 = Image.create! :filename => 'TEMFWMKYKJOJVXX.jpg', :private => 'false', :user_id => 3

tag1 = Tag.create! :tag_string => 'image tag', :image_id '2'

access1 = Access.create! :image_id => '1', :user_id => '3'
