# BiZ9-ScriptZ
The BiZ9-ScriptZ framework component handles all scripting for the BiZ9-Framework. 

## Installation
Use the [npm](https://npm.com) installer to install.

```bash
npm install biz9-scriptz
```
## Required
* [BiZ9 Config File](biz9_config_file)

## Optional
* [GIT](https://git-scm.com/downloads)
* [nodemon](https://www.npmjs.com/package/nodemon)
* [Redis](https://redis.io/docs/latest/operate/oss_and_stack/install/install-redis/)

## Commands
#### App
* [9_blank](#9_blank)
* [9_app_info](#9_app_info)
#### App Service
* [9_node_service_start](#9_node_service_start)
* [9_port_open_list](#9_port_open_list)
* [9_react_start](#9_react_start)
#### Diff
* [9_diff_file](#9_diff_file)
* [9_diff_folder](#9_diff_folder)
#### GIT
* [9_git_branch_update](#9_git_branch_update)
* [9_git_branch_list](#9_git_branch_list)
* [9_git_commit](#9_git_commit)
* [9_git_hub_test](#9_git_hub_test)
* [9_git_push](#9_git_push)
* [9_git_reset_init](#9_git_reset_init)
* [9_git_main_branch_merge_checkout](#9_git_main_branch_merge_checkout)
#### Mobile
* [9_mobile_android_emulator_start](#9_mobile_android_emulator_start)
* [9_mobile_react_build](#9_mobile_react_build)
* [9_mobile_react_cache_reset](#9_mobile_react_cache_reset)
* [9_mobile_react_clean](#9_mobile_react_clean)
* [9_mobile_react_device_build_deploy](#9_mobile_react_device_build_deploy)
* [9_mobile_react_device_log_android](#9_mobile_react_device_log_android)
* [9_mobile_react_device_port_open](#9_mobile_react_device_port_open)

#### Mongo
* [9_mongo_shell](#9_mongo_shell)



#### About
* [Credit](#credit) 

-------------------------------------------------------------
### <a id="9_blank"></a>9_blank
tbd
#### Params
- none
#### Example
```bash
-- code_here --
```

-------------------------------------------------------------

### <a id="9_app_info"></a>9_app_info
Print BiZ9 project application specifications.
#### Params
- none
#### Example
```bash
$ 9_app_info 
#################
BiZ9 Framework App Info
#################
------------
Git Info
---
Version: 1.0.0
Repo: git@github.com:biz9framework/biZ9-project-blank-service.git
Branch: main
---
------------
App Info
---
Title:  BiZ9-Project-Blank-Service
App Title ID:  project-blank-service
Project ID:  19
Port ID:  1901
############
END
2025-01-01 16:07:44
############
```

### <a id="9_node_service_start"></a>9_node_service_start
Start Express.js nodemon application server.
#### Params
- none
#### Example
```bash
$ 9_node_service_start
[nodemon] 3.1.7
[nodemon] to restart at any time, enter `rs`
[nodemon] watching path(s): *.*
[nodemon] watching extensions: js,mjs,cjs,json
[nodemon] starting `node bin/www index.js`
[nodemon] clean exit - waiting for changes before restart

```
### <a id="9_port_open_list"></a>9_port_open_list
Print all open ports on system.
#### Params
- none
#### Example
```bash
$ 9_port_open_list
tcp        0      0 127.0.0.1:6379          0.0.0.0:*               LISTEN      707/redis-server 12 
tcp        0      0 0.0.0.0:80              0.0.0.0:*               LISTEN      915/nginx: master p 
tcp        0      0 127.0.0.1:631           0.0.0.0:*               LISTEN      706/cupsd           
tcp        0      0 127.0.0.1:25            0.0.0.0:*               LISTEN      1161/exim4          
tcp6       0      0 ::1:631                 :::*                    LISTEN      706/cupsd           
tcp6       0      0 ::1:25                  :::*                    LISTEN      1161/exim4          
tcp6       0      0 :::80                   :::*                    LISTEN      915/nginx: master p 
tcp6       0      0 ::1:6379                :::*                    LISTEN      707/redis-server 12 

```
### <a id="9_react_start"></a>9_react_start
Start React application server.
#### Params
- none
#### Example
```bash
$ 9_react_start
src/feature-module/pages/our-team/teamCarousel.tsx                                                      
Line 1:17:  'useState' is defined but never used  @typescript-eslint/no-unused-vars                     src/feature-module/router/router.link.tsx                                                               Line 338:7:  Unexpected whitespace before property notificationSetting  no-whitespace-before-property   src/feature-module/user-dashboard/user-message/index.tsx                                                Line 4:8:  'Scrollbars' is defined but never used  @typescript-eslint/no-unused-vars            
webpack compiled with 1 warning                                                                     
No issues found.      
```

### <a id="9_diff_file"></a>9_diff_file
Compare 2 different files line by line.
#### Params
- filename 1, filename 2
#### Example
```bash
$ 9_diff_file file1.js file2.js 
console.log(" This Is File 1 "); | console.log(" This Is File 2 ");
```
### <a id="9_diff_folder"></a>9_diff_folder
Compare 2 different folders file by file.
#### Params
- folder_1, folder_2
#### Example
```bash
$ 9_diff_folder folder_1 folder_2
Only in folder_1: file1
Only in folder_2: file2

```
### <a id="9_git_branch_update"></a>9_git_branch_update
GIT Branch update to new version. Increment app version by 1 to make new branch name.
#### Params
- none
#### Example
```bash
$ 9_git_branch_update 
#################
BiZ9 Framework GIT Branch Update
#################
1.0.3
Switched to a new branch '1.0.3'
############
END
2025-01-01 17:36:23
############

```
### <a id="9_blank"></a>9_blank
Print GIT Branch list.
#### Params
- none
#### Example
```bash
$ 9_git_branch_list 
#################
BiZ9 Framework GIT Branch List
#################
------------
Git Info
---
Version: 1.0.2
Repo: git@github.com:biz9framework/biZ9-project-blank-service.git
Branch: 1.0.3
---
* 1.0.3
  main
############
END
2025-01-01 17:54:29
############

```
### <a id="9_git_commit"></a>9_git_commit
GIT commit aka save your code changes.
#### Params
- none
#### Example
```bash
9_git_commit 
#################
BiZ9 Framework App Git Commit
#################
------------
Git Info
---
Version: 1.0.4
Repo: git@github.com:biz9framework/biZ9-project-blank-service.git
Branch: 1.0.3
---
Enter notes:
my commit notes

[1.0.3 5b786ee] my commit notes
 1 file changed, 1 insertion(+), 1 deletion(-)
############
END
2025-01-01 17:58:12
############

```
### <a id="9_git_hub_test"></a>9_git_hub_test
GIthub.com with system connectivity test.
#### Params
- none
#### Example
```bash
$ 9_git_hub_test 
Hi biz9framework! You've successfully authenticated, but GitHub does not provide shell access.

```
### <a id="9_git_push"></a>9_git_push
GIT push your code to GIT remote repository.
#### Params
- none
#### Example
```bash
$ 9_git_push 
#################
BiZ9 Framework Git Push
#################
------------
Git Info
---
Version: 1.0.5
Repo: git@github.com:biz9framework/biZ9-project-blank-service.git
Branch: 1.0.3
---
Are you sure?
yes
Enumerating objects: 166, done.
Counting objects: 100% (166/166), done.
Delta compression using up to 4 threads
Compressing objects: 100% (163/163), done.
Writing objects: 100% (166/166), 188.89 KiB | 5.72 MiB/s, done.
Total 166 (delta 56), reused 0 (delta 0), pack-reused 0
remote: Resolving deltas: 100% (56/56), done.
To github.com:biz9framework/biZ9-project-blank-service.git
 * [new branch]      1.0.3 -> 1.0.3
############
END
2025-01-01 18:37:15
############

```
### <a id="9_git_reset_init"></a>9_git_reset_init
GIT reset, then intalize new GIT, last check out to main branch.
#### Params
- none
#### Example
```bash
9_git_reset_init 
#################
BiZ9 Framework GIT Reset Init
#################
------------
Git Info
---
Version: 1.0.5
Repo: git@github.com:biz9framework/biZ9-project-blank-service.git
Branch: 1.0.3
---
Initialized empty Git repository in /biz9-projectz/blank-service/code/.git/
Switched to a new branch 'main'
############
END
2025-01-01 18:54:05
############

```
### <a id="9_git_main_branch_merge_checkout"></a>9_git_main_branch_merge_checkout
GIT switch to ‘main’ branch and checkout out 'main' branch.
#### Params
- none
#### Example
```bash
$ 9_git_main_branch_merge_checkout 
#################
BiZ9 Framework Git Main Branch Merge Checkout
#################
------------
Git Info
---
Version: 1.0.5
Repo: git@github.com:biz9framework/biZ9-project-blank-service.git
Branch: 1.0.6
---
Are you sure?
yes
Deleted branch main (was e81642e).
1.0.6
############
END
2025-01-01 19:04:05
############

```
### <a id="9_mobile_android_emulator_start"></a>9_mobile_android_emulator_start
Start Android emulator.
#### Params
- none
#### Example
```bash
$ 9_mobile_android_emulator_start
Starts and open Android emulator instance on system.
```
### <a id="9_blank"></a>9_blank
tbd
#### Params
- none
#### Example
```bash
-- code_here --
```
### <a id="9_mobile_react_build"></a>9_mobile_react_build
React Native build project.
#### Params
- none
#### Example
```bash
-- coming soon --
```
### <a id="9_mobile_react_cache_reset"></a>9_mobile_react_cache_reset
React Native cache reset.
#### Params
- none
#### Example
```bash
-- coming soon --
```
### <a id="9_mobile_react_clean"></a>9_mobile_react_clean
React Native clean project.
#### Params
- none
#### Example
```bash
-- coming soon --
```
### <a id="9_mobile_react_device_build_deploy"></a>9_mobile_react_device_build_deploy
React Native device build and deploy to device.
#### Params
- none
#### Example
```bash
-- coming soon --
```
### <a id="9_mobile_react_device_log_android"></a>9_mobile_react_device_log_android
React Native device log messages on system.
#### Params
- none
#### Example
```bash
-- coming soon --
```
### <a id="9_mobile_react_device_port_open"></a>9_mobile_react_device_port_open
Open system port for React Native log messages.
#### Params
- none
#### Example
```bash
-- coming soon --
```



------------------------------------------------------------------------------------
### <a id="credit"></a>Credits

#### Company
- BoSS AppZ

#### Code
- [BiZ9 Framework Github](https://github.com/biz9framework)
- [BiZ9 Data](https://www.npmjs.com/package/biz9-data)
- [BiZ9 Data](https://www.npmjs.com/package/biz9-data)

#### E-mail
- certifiedcoderz@gmail.com
#### Website
- [bossappz.com](https://bossappz.com)
- [mobile.bossappz.com](https://mobile.bossappz.com)
#### BoSS AppZ 💰
BoSS AppZ are web and mobile applications built for the BoSS on the go. The primary features of the BoSS AppZ are ThemeForest.net, The BiZ9 Framework, and Amazon Web Services. BoSS ApZZ powers many applications in the healthcare, retail and manufacturing industries.
- [Blog](https://bossappz.medium.com)
#### App Money NoteZ 💯
Application Development NoteZ That Make $ense! Cuts out all the blah, blah, blah and gets right to the resultZ!
#### The BiZ9 Framework 🦾
The BiZ9 Framework is a user-friendly platform for building fast and scalable network applications. The framework consists of libraries and software tools like: Node,js, React Native, Angular, ExpressJS, MongoDB, Nginx, Redis, GIT, and Bash scripts. The BIZ9 Framework is designed to build, maintain, and deploy rich and robust, applications for web, Android and Apple devices. Other 3rd party  Application Programming Interfaces included are Amazon Web Service, Stripe, and Bravely.
- [Website](https://github.com/biz9framework)
- [Blog](https://bossappz.medium.com/what-is-the-biz9-framework-29731c49ad79)
#### BoSS AppZ Developer  ClaZZ💡
The BoSS AppZ Application Development Class is custom designed for each individual that desires to learn the art of application development for career or self-use purposes. We will teach you and train you on how to become a full stack application developer. Mobile applications are the future. Stay informed with the best and greatest tools for application development. 
- [Website](https://bossappz.com)
#### TaNK9 Code 👽
Brandon Poole Sr also known as ‘TaNK’ is a full stack application developer
born and raised in Atlanta Ga and graduated with a Computer Information Systems degree from Fort Valley State University (FVSU).  While attending FVSU Mr. Poole created a social network titled CrunkFriends. It accumulated over 50k registered members and was the first of its kind back in 2005.

Mr. Poole went on to have a career as a Senior Application Developer for many premium Technology companies. The names of those tech companies are Colonial Pipeline, The Boeing Company, Georgia Pacific, Nascar, Home Depot, the Center for Disease Control, American Cancer Society, and the United Parcel Service (UPS). 

He is sometimes referred to as “the real Tank” from the movie The Matrix.

- [Website](https://certifiedcoderz.com)
- [Blog](https://medium.com/@tank9code/about-brandon-poole-sr-ac2fe8e06a09)
- [Email](mailto:certifiedcoderz@gmail.com)
#### Brandon Poole Sr.
- BoSS AppZ Creator
- 9_OPZ #Certified CoderZ Founder
- The Real Tank from the #Matrix movie! 
- Expert in Open Source Software
#### LinkZ:
- [bossappz.com](bossappz.com)
- [medium.com/bossappz](medium.com/bossappz)
- [bossappz.blogspot.com](https://bossappz.blogspot.com)
- [twitter.com/boss_appz](https:twitter.com/boss_appz)
- [youtube.com/boss_appz](https://www.youtube.com/@mybossapp/videos)
- [instagram.com/bossappz_showcase](instagram.com/bossappz_showcase)
- [facebook.com/bossappz](facebook.com/bossappz)
#### TagZ:
##### #BoSSAppZ
##### #BiZ9Framework
##### #EBook
##### #Mobile
##### #Apple
##### #Android
##### #IOS
##### #Linux
##### #AmazonWebServices
##### #AppMoneyNoteZ
##### #TaNKCode9
##### Thank you for your time.
#####  Looking forward to working with you.
### License
[MIT](https://choosealicense.com/licenses/mit/)
