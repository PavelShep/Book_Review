# Create Users
User.create!(:email => 'john@gmail.com', :password => 'password', :password_confirmation => 'password')
User.create!(:email => 'morgan@gmail.com', :password => 'password1', :password_confirmation => 'password1')
User.create!(:email => 'alex@gmail.com', :password => 'password12', :password_confirmation => 'password12')

# Create Categories
Category.create!([{
  name: "History"
},
{
  name: "Sports"
}])

# Create Books
book1 = Book.create!(title: "Krzyzacy", description: "W tynieckiej gospodzie Pod Lutym Turem dwaj rycerze z Bogdańca, Maćko i jego synowiec, młodziutki Zbyszko, spotykają się z dworem księżnej Anny Danuty. Zbyszko od pierwszego wejrzenia zakochuje się w jednej z dwórek księżnej, Danusi. Nie spodziewa się, jak bardzo dziewczyna zostanie skrzywdzona przez Krzyżaków, jeszcze nie wie, że w wielkiej wojnie z Zakonem, która wkrótce się rozegra on, Zbyszko, weźmie udział również z osobistych powodów", author: "Henryk Sienkiewicz", user_id: 1, category_id: 1)
book1.image.attach( io: File.open(Rails.root.join('db/images/British_Empire.jpg')),
filename: 'British_Empire.jpg')
book2 = Book.create!(title: "The rise and the fall of the British empire", description: "THE RISE AND FALL OF THE BRITISH EMPIRE covers the history of British expansion overseas from the sixteenth to the twentieth centuries. Narrative and analysis are interwoven with revealing eyewitness quotation to provide keen insight into the minds of those involved in conquering, settling and ruling the greatest Empire the world has seen.", author: "Lawrence James", user_id: 2, category_id: 1)
book2.image.attach( io: File.open(Rails.root.join('db/images/krzyzacy.jpg')),
filename: 'krzyzacy.jpg')

# Create Reviews
Review.create!(rating: 5, comment: "Cool book!", user_id: 3, book_id: 1)
Review.create!(rating: 5, comment: "Best book:)))", user_id: 3, book_id: 2)



