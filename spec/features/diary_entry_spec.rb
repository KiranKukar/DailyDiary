feature 'user can add a diary entry' do
  scenario 'user adds a diary entry' do
    visit('/')
    fill_in 'entry', with: 'First entry'
    click_on 'Create Entry'

    expect(page).to have_content 'First entry'
  end
end