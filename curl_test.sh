curl https://tryout.sonicgarden.jp/lecture/sample/messages -X POST -d "lecture_sample_message[user]=test_user" -d "lecture_sample_message[text]=test_text"
curl https://tryout.sonicgarden.jp/lecture/sample/messages/143 -X POST -d "lecture_sample_message[user]=edit_user" -d "lecture_sample_message[text]=edit_text" -d "_method=patch"
curl https://tryout.sonicgarden.jp/lecture/sample/messages/143 -X DELETE

