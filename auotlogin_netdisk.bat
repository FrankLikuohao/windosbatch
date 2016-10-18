
echo 正在連結網路磁碟當中，請稍等...... 
rem net use i: /delete
rem net use i: \\主機名稱\資料夾名稱 /user:帳號 密碼

rem net use p: /delete
rem net use p: \\FILESVR\passport frank0406 /user:frank

net use s: /delete
net use s: \\FILESVR\data /user:frank frank0406

net use w: /delete
net use w: \\FILESVR\whale frank0406 /user:frank

net use v: /delete
net use v: \\FILESVR\moveout frank0406 /user:frank

net use o: /delete
net use o: \\FILESVR\newcargo frank0406 /user:frank

net use x: /delete
net use x: \\EEEPC\downloader frank0406 /user:frank
