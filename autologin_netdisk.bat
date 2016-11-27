echo 正在連結網路磁碟當中，請稍等...... 
rem net use i: /delete
rem net use i: \\主機名稱\資料夾名稱 /user:帳號 密碼

c:\windows\system32\net use p: /delete
c:\windows\system32\net use p: \\FILESVR\passport frank0406 /user:frank

c:\windows\system32\net use s: /delete
c:\windows\system32\net use s: \\FILESVR\data /user:frank frank0406

c:\windows\system32\net use w: /delete
c:\windows\system32\net use w: \\FILESVR\whale frank0406 /user:frank

c:\windows\system32\net use v: /delete
c:\windows\system32\net use v: \\FILESVR\moveout frank0406 /user:frank

c:\windows\system32\net use n: /delete
c:\windows\system32\net use n: \\FILESVR\newcargo frank0406 /user:frank

c:\windows\system32\net use x: /delete
c:\windows\system32\net use x: \\eeepc\downloader frank0406 /user:frank
