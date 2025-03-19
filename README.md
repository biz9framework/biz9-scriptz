# BiZ9-ScriptZ
The BiZ9-ScriptZ framework component handles all scripting for the BiZ9-Framework.

## Installation
Use the [npm](https://npm.com) installer to install.

```bash
npm install biz9-scriptz
```
## Required
* [BiZ9 Config File](biz9_config_file)
* [Bashrc](bashrc)

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
#### NPM
* [9_npm_cache_clear]() tbd

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
## Bashrc Config
### <a id="bashrc"></a>Bash Config file
Add the below aliases to your .bashrc file.

```bash
## BiZ9 Framework ScriptZ Alias Start ###

#export BIZ9_SCRIPTZ_DIRECTORY="node_modules/biz9-scriptz/scriptz/";

#app
alias 9_app_info="bash ${BIZ9_SCRIPTZ_DIRECTORY}app_info.sh";

#app service
alias 9_node_service_start='nodemon bin/www';
alias 9_port_open_list='sudo netstat -ntlp | grep LISTEN';
alias 9_react_start='npm start';

alias 9_search_string_filez="bash ${BIZ9_SCRIPTZ_DIRECTORY}search_string_filez.sh";
alias 9_search_filename="bash ${BIZ9_SCRIPTZ_DIRECTORY}search_filename.sh";

alias 9_open_unzip="unzip ";
alias 9_open_ungzip="gzip -d ";
alias 9_open_zip_create="zip -r my_arch.zip my_folder";

alias 9_kill_app='kill -9 ';
alias 9_kill_all_node='killall node';
alias 9_kill_all_app='killall ';

#diff
alias 9_diff_file='diff --side-by-side';
alias 9_diff_folder="diff --brief --recursive --exclude '*.git'";

#git
alias 9_git_branch_update="bash ${BIZ9_SCRIPTZ_DIRECTORY}git_branch_update.sh"
alias 9_git_branch_list="bash ${BIZ9_SCRIPTZ_DIRECTORY}git_branch_list.sh";
alias 9_git_commit="bash ${BIZ9_SCRIPTZ_DIRECTORY}git_commit.sh";
alias 9_git_hub_test='ssh -T git@github.com';
alias 9_git_push="bash ${BIZ9_SCRIPTZ_DIRECTORY}git_push.sh";
alias 9_git_pull="bash ${BIZ9_SCRIPTZ_DIRECTORY}git_pull.sh";
alias 9_git_reset_init="bash ${BIZ9_SCRIPTZ_DIRECTORY}git_reset_init.sh";
alias 9_git_main_branch_merge_checkout="bash ${BIZ9_SCRIPTZ_DIRECTORY}git_main_branch_merge_checkout.sh";

#mobile
alias 9_mobile_android_emulator_start='genymotion';
alias 9_mobile_react_build="bash ${BIZ9_SCRIPTZ_DIRECTORY}mobile_react_build.sh";
alias 9_mobile_react_cache_reset="bash ${BIZ9_SCRIPTZ_DIRECTORY}mobile_react_cache_reset.sh";
alias 9_mobile_react_clean="bash ${BIZ9_SCRIPTZ_DIRECTORY}mobile_react_clean.sh";
alias 9_mobile_react_device_build_deploy="bash ${BIZ9_SCRIPTZ_DIRECTORY}mobile_react_device_build_deploy";
alias 9_mobile_react_device_log_android="bash ${BIZ9_SCRIPTZ_DIRECTORY}mobile_react_device_log_android.sh";
alias 9_mobile_react_device_port_open="bash ${BIZ9_SCRIPTZ_DIRECTORY}mobile_react_device_port_open.sh";

#mongo
alias 9_mongo_shell='mongosh --shell --port 27019';
alias 9_mongo_start="sudo mongod --fork --config /etc/mongod.conf";

#npm
alias 9_npm_publish="bash ${BIZ9_SCRIPTZ_DIRECTORY}npm_publish.sh";
alias 9_npm_cache_clear="bash ${BIZ9_SCRIPTZ_DIRECTORY}npm_cache_clear.sh";

#redis
alias 9_redis_start="service redis-server start";
alias 9_redis_flush="redis-cli FLUSHALL";

#os
alias 9_os_info="lsb_release -a";
```

## BiZ9 Framework ScriptZ Alias End ###

## Credits
### <a id="credit"></a>Credits

#### Company
- **BiZ9 Framework LLC**

#### Code
- [BiZ9 Framework Github](https://github.com/biz9framework)
- [BiZ9 Framework NPM](https://www.npmjs.com/~biz9framework)

#### E-mail
- [biz9framework@gmail.com](mailto:biz9framework@gmail.com)

#### Support
- [Cash App](https://cash.app/$bossappzstudio)

#### The BiZ9 Framework 🦾
![BiZ9 Framework Logo](https://github.com/biz9framework/biz9-art/blob/main/biz9-framework/logo/logox250.png?raw=true)

**The BiZ9 Framework** is a developer friendly platform for building premium, polished, fast, professional and scalable business applications using the lastest rapid application development tools and techniques. The framework consists of libraries, commands, scripts, and packages for creating, maintaining, testing, and deploying both **mobile** and **website applications**. The primary 3rd party framework used are [**React**](https://react.dev/), [**React Native**](https://reactnative.dev/), [**Node.js**](http://Node.js), [**ExpressJS**](https://expressjs.com/), [**MongoDB**](https://www.mongodb.com/), [**Nginx**](https://nginx.org/), [**Redis**](https://redis.io/), [**Git**](https://git-scm.com/), and [**Bash**](https://www.gnu.org/software/bash/). **The BiZ9 Framework** focus is to be precise, routine, rapid, and customizable. The primary target devices for **The BiZ9 Framework** are [**Apple iOS**](https://developer.apple.com/), [**Android**](https://www.android.com/), [**Chrome**](https://www.google.com/chrome/), [**Safari**](https://www.apple.com/safari/), [**Firefox**](https://www.mozilla.org/en-US/firefox/), and [**Edge**](https://www.microsoft.com/en-us/edge/?form=MA13FJ). Other 3rd party Application Programming Interfaces (API) that are pre included are [**Amazon Web Service**](https://aws.amazon.com/), [**Stripe**](https://stripe.com/) and [**Bravely**](https://workbravely.com/).

- <a href="https://github.com/biz9framework" target="_blank">Biz9 Framework GitHub</a>
- <a href="https://bossappz.medium.com/what-is-the-biz9-framework-29731c49ad79" target="_blank">Biz9 Framework Blog</a>
- <a href="https://youtu.be/W_ZUmwZMFoc?si=4b5_6q9vPgi1IxPL" target="_blank">BoSS Mobile App Youtube Demo</a>

#### TaNK9 Code 👽
![TaNK9 Code Head](https://github.com/biz9framework/biz9-art/blob/main/tank9code/head/tank9_headx250.png?raw=true)

**Brandon Poole Sr** also known as **‘TaNK’** is a technical lead and full stack software engineer with over 19 years of professional experience. He was born and raised in **Atlanta, Ga** and graduated with a Computer Information Systems **Bachelor of Science Degree** from [**Fort Valley State University**](https://www.fvsu.edu/). He is proficient in [**ASP.NET C#**](http://ASP.NET), [**ASP.NET MVC**](https://dotnet.microsoft.com/en-us/apps/aspnet/mvc), [**.NET Core**](https://dotnet.microsoft.com/en-us/download), [**Microsoft SQL Server**](https://www.microsoft.com/en-us/sql-server), [**IIS Web Server**](https://learn.microsoft.com/en-us/iis/get-started/introduction-to-iis/iis-web-server-overview), [**Node.js**](http://Node.js), [**React**](https://react.dev/), [**React Native**](https://reactnative.dev/), [**Framework7**](https://framework7.io/), [**Redis**](https://redis.io/), [**Amazon Web Services**](https://aws.amazon.com/), [**Apple iOS**](https://developer.apple.com/ios/), [**Android SDK**](https://developer.android.com/studio), [**MongoDB**](https://www.mongodb.com/), [**Redis**](https://redis.io/), [**NGINX**](https://nginx.org/), and [**Git**](https://git-scm.com/). He has worked as a software developer for Fortune 500 companies such as [**The Boeing Company**](https://www.boeing.com/), [**Georgia Pacific**](https://www.gp.com/), [**Colonial Pipeline**](https://www.colpipe.com/), [**Home Depot**](https://corporate.homedepot.com/) and [**United Parcel Services**](https://www.ups.com/us/en/home).

He is sometimes referred to as “the real Tank” from the movie [**The Matrix**](https://www.imdb.com/title/tt0133093/).

- **Tank9 TooLZ Book** [Amazon E-Book](https://a.co/d/2BDjSYb)
- [Tank9Code Blog](https://medium.com/@tank9code/about-brandon-poole-sr-ac2fe8e06a09)
- [Tank9Code Twitter](https://instagram.com/tank9code)
- [Tank9Code Instagram](https://instagram.com/tank9code)
- [Tank9Code Youtube](https://youtube.com/@tank9code)

#### TagZ:
##### #BiZ9Framework
##### #BoSSAppZ
##### #Mobile
##### #Apple
##### #Android
##### #ApplicationDevelopment
##### #SoftwareFramework
##### #Cloud
##### #IOS
##### #Linux
##### #JavaScript
##### #NoSQL
##### #AppMoneyNoteZ
##### #TaNK9Code
##### Thank you for your time.
#####  Looking forward to working with you.
### License
[MIT](https://choosealicense.com/licenses/mit/)
