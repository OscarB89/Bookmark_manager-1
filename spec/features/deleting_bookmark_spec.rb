feature 'Deleting a bookmark' do
  scenario 'User can delete a bookmark' do
    Bookmark.create(new_bookmark: 'http://www.makersacademy.com', title: 'Makers Academy')
    visit('/')
    expect(page).to have_link('Makers Academy', href: 'http://www.makersacademy.com')

    first('.bookmark').click_button 'Delete'

    expect(current_path).to eq '/'
    expect(page).not_to have_link('Makers Academy', href: 'http://www.makersacademy.com')
  end
end