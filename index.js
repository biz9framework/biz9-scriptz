const fs = require("fs");
const async=require("async");
const prompt = require('prompt-sync')();
const { exec } = require('child_process');
//const biz9_config_file=__dirname+"/../../"+"biz9_config.js";
const biz9_config_file=__dirname+"/../../"+"biz9_config";
//const package_file=__dirname+"/../../"+"package.json";
//const biz9_config = require(biz9_config_file);

const package = require(package_file);
class Print {
    static show_header(title) {
        console.log('############');
        console.log(title);
        console.log('############');
    }
    static show_sub_header(title) {
        console.log('------------');
        console.log(title);
        console.log('---');
    }
    static show_sub_footer() {
        console.log('---');
    }
    static show_footer(title) {
        if(!title){
            title='';
        }
        console.log('############');
        console.log('END');
        console.log(new Date().toLocaleString());
        console.log('############');
    }
    static show_git_info() {
        Print.show_sub_header('Git Info');
        console.log("Version: "+biz9_config.VERSION);
        console.log("Repo: "+biz9_config.REPO);
        console.log("Branch: "+biz9_config.BRANCH);
        Print.show_sub_footer();
    }
}
module.exports.git_main_branch_merge_checkout_old = function () {
    let commit_note='';
    let current_branch='';
    let confirm=false;
    async.series([
        function(call){
            Print.show_header('BiZ9 Framework Git Main Merge Checkout');
            call();
        },
        function(call){
            Print.show_git_info();
            call();
        },
        function(call){
            confirm = prompt('Are you sure? (yes default):');
            if(!confirm){
                confirm='y';
            }
            if(confirm.toLowerCase()=='y' || confirm.toLowerCase()=='yes'){
                confirm=true;
            }else{
                confirm=false;
            }
            call();
        },
        function(call){
            if(confirm){
                exec("git branch -D main", (error, stdout, stderr) => {
                    if (error) {
                        console.log(error);
                        call();
                        return;
                    }else{
                        console.log(stdout);
                        console.log(stderr);
                        call();
                    }
                });
            }else{
                call();
            }
        },
        function(call){
            if(confirm){
                exec("git branch -m main", (error, stdout, stderr) => {
                    if (error) {
                        console.log(error);
                        call();
                        return;
                    }else{
                        console.log(stdout);
                        console.log(stderr);
                        call();
                    }
                });
            }else{
                call();
            }
        },
        function(call){
            Print.show_sub_header('Current Branch');
            exec("git branch --show current", (error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    call();
                }else{
                    console.log(stdout);
                    Print.show_sub_footer();
                    call();
                }
            });
        },
        function(call){
            current_branch=biz9_config.BRANCH;
            new_branch='main';
            call();
        },
        function(call){
            fs.readFile(biz9_config_file, 'utf8', function (err,data) {
                if (err) {
                    return console.log(err);
                }
                var result = data.replace(current_branch, new_branch);
                fs.writeFile(biz9_config_file, result, 'utf8', function (err) {
                    if (err) return console.log(err);
                });
                call();
            });
        },
    ],
        function(err, result){
            Print.show_footer();
        });
};
module.exports.git_branch_push_old = function () {
    let confirm=false;
    async.series([
        function(call){
            Print.show_header('BiZ9 Framework Git Branch Push');
            call();
        },
        function(call){
            Print.show_git_info();
            call();
        },
        function(call){
            confirm = prompt('Are you sure? (yes default):');
            if(!confirm){
                confirm='y';
            }
            if(confirm.toLowerCase()=='y' || confirm.toLowerCase()=='yes'){
                confirm=true;
            }else{
                confirm=false;
            }
            call();
        },
        function(call){
            if(confirm){
                exec("git push -f "+biz9_config.REPO+" "+biz9_config.BRANCH, (error, stdout, stderr) => {
                    if (error) {
                        console.log(error);
                        return;
                    }
                    console.log(stdout);
                    console.log(stderr);
                    call();
                });
            }else{
                call();
            }
        },
    ],
        function(err, result){
            Print.show_footer();
        });
};
module.exports.git_branch_update_old = function () {
    let current_branch='';
    let new_branch='';
    async.series([
        function(call){
            Print.show_header('BiZ9 Framework Git Branch Update');
            call();
        },
        function(call){
            current_branch=biz9_config.BRANCH;
            new_branch=biz9_config.VERSION;
            call();
        },
        function(call){
            Print.show_git_info();
            call();
        },
        function(call){
            Print.show_sub_header('Current Branch');
            exec("git branch --show current", (error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    call();
                }else{
                    console.log(stdout);
                    Print.show_sub_footer();
                    call();
                }
            });
        },
        function(call){
            if(new_branch){
                exec("git checkout -b "+new_branch, (error, stdout, stderr) => {
                    if (error) {
                        console.log(error);
                        call();
                    }else{
                        console.log(stdout);
                        console.log(stderr);
                        call();
                    }
                });
            }else{
                call();
            }
        },
        function(call){
            fs.readFile(biz9_config_file, 'utf8', function (err,data) {
                if (err) {
                    return console.log(err);
                }
                var result = data.replace(current_branch, new_branch);
                fs.writeFile(biz9_config_file, result, 'utf8', function (err) {
                    if (err) return console.log(err);
                });
                call();
            });
        },
    ],
        function(err, result){
            Print.show_footer();
        });
};
module.exports.git_branch_list_old = function () {
    async.series([
        function(call){
            Print.show_header('BiZ9 Framework Git List');
            call();
        },
        function(call){
            exec("git branch",(error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    return;
                }
                console.log(stdout);
                console.log(stderr);
                call();
            });
        },
        function(call){
            Print.show_git_info();
            call();
        },
    ],
        function(err, result){
            Print.show_footer();
        });
};
module.exports.git_branch_repo_checkout_old = function () {
    let branch='';
    async.series([
        function(call){
            Print.show_header('BiZ9 Framework Git Branch Repo Checkout');
            call();
        },
        function(call){
            Print.show_git_info();
            call();
        },
        function(call){
            branch = prompt('Enter Branch: ');
            call();
        },
        function(call){
            exec('git -b checkout '+biz9_config.REPO + " " + branch, (error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    return;
                }
                console.log(stdout);
                call();
            });
        },
        function(call){
            Print.show_sub_header('New Version');
            console.log(new_version);
            Print.show_sub_footer();
            call();
        },
    ],
        function(err, result){
            Print.show_footer();
        });
};
module.exports.git_branch_commit_old = function () {
    let commit_note='';
    let current_version='';
    let new_version='';
    async.series([
        function(call){
            Print.show_header('BiZ9 Framework Git Branch Commit');
            call();
        },
        function(call){
            Print.show_git_info();
            call();
        },
        function(call){
            current_version=biz9_config.VERSION;
            call();
        },
        function(call){
            exec("npm version patch --no-git-tag-version --tag-version-prefix=''", (error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    return;
                }
                new_version=String(stdout).trim();
                call();
            });
        },
        function(call){
            fs.readFile(biz9_config_file, 'utf8', function (err,data) {
                if (err) {
                    return console.log(err);
                }
                var result = data.replace(current_version, new_version);
                fs.writeFile(biz9_config_file, result, 'utf8', function (err) {
                    if (err) return console.log(err);
                });
                call();
            });
        },
        function(call){
            commit_note = prompt('Enter Commit Notes: ');
            call();
        },
        function(call){
            exec('git add -A .', (error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    return;
                }
                console.log(stdout);
                call();
            });
        },
        function(call){
            exec("git commit -m '"+commit_note+"'", (error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    return;
                }
                console.log(stdout);
                console.log(stderr);
                call();
            });
        },
        function(call){
            current_version=biz9_config.VERSION;
            call();
        },
        function(call){
            Print.show_sub_header('New Version');
            console.log(new_version);
            Print.show_sub_footer();
            call();
        },
    ],
        function(err, result){
            Print.show_footer();
        });
};
module.exports.info_old = function () {
    exec('./script.sh', (error, stdout, stderr) => {
  if (error) {
    console.error(`exec error: ${error}`);
    return;
  }
    console.log(`stdout: ${stdout}`); // Outputs: value
    });
    Print.show_header('BiZ9 Framework Info');
    console.log("Title: "+biz9_config.TITLE);
    console.log("Version: "+biz9_config.VERSION);
    console.log("Repo: "+biz9_config.REPO);
    console.log("Branch: "+biz9_config.BRANCH);
    Print.show_footer();
};
module.exports.folder_search_old = function () {
    var search='';
    async.series([
        function(call){
            Print.show_header('BiZ9 Framework Search');
            call();
        },
        function(call){
            search = prompt('Search For?:');
            call();
        },
        function(call){
            console.log('String Search ResultZ:');
            exec("/usr/bin/grep -rnw $(pwd)/ -e "+search, (error, stdout, stderr) => {
                if (error) {
                    //console.log(error);
                    return;
                }
                console.log(stdout);
                console.log('---------------------------------------');
                call();
            });
        },
        function(call){
            console.log('File Search ResultZ:');
            exec("/usr/bin/find . -name "+search, (error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    return;
                }
                console.log(stdout);
                console.log('---------------------------------------');
                call();
            });
        },
    ],
        function(err, result){
            Print.show_footer();
        });
};
module.exports.git_reset_init_old = function () {
    async.series([
        function(call){
            Print.show_header('BiZ9 Framework Git Reset Init');
            call();
        },
        function(call){
            exec('rm -rf .git', (error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    return;
                }
                console.log(stdout);
                call();
            });
        },
        function(call){
            exec('git init', (error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    return;
                }
                console.log(stdout);
                call();
            });
        },
        function(call){
            exec('git checkout -b main',(error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    return;
                }
                console.log(stdout);
                call();
            });
        },
    ],
        function(err, result){
            Print.show_footer();
        });
};
module.exports.npm_publish_old = function () {
    async.series([
        function(call){
            Print.show_header('BiZ9 Framework NPM Publish');
            call();
        },
        function(call){
            exec('sudo npm publish --access public', (error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    call();
                }else{
                    console.log(stderr);
                    console.log(stdout);
                    call();
                }
            });
        },
    ],
        function(err, result){
            Print.show_footer();
        });
};
module.exports.react_cache_reset_old = function () {
    async.series([
        function(call){
            Print.show_header('BiZ9 Framework Mobile React Cache Reset');
            call();
        },
        function(call){
            var str="react-native bundle --dev false --reset-cache --platform android --entry-file index.js --bundle-output ./android/app/src/main/assets/index.android.bundle --assets-dest ./android/app/src/main/res"
            exec(str,(error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                }else{
                    console.log(stderr);
                    console.log(stdout);
                    call();
                }
            });
        }
    ],
        function(err, result){
            Print.show_footer();
        });
};
module.exports.react_build_old = function () {
    async.series([
        function(call){
            Print.show_header('BiZ9 Framework Mobile React Build');
            call();
        },
        function(call){
            var str="cd android && ./gradlew assembledebug && cd ../";
            exec(str,(error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    call();
                }else{
                    console.log(stderr);
                    console.log(stdout);
                    call();
                }
            });
        }
    ],
        function(err, result){
            Print.show_footer();
        });
};
module.exports.react_clean_old = function () {
    async.series([
        function(call){
            Print.show_header('BiZ9 Framework Mobile React Clean');
            call();
        },
        function(call){
            var str="cd android && ./gradlew clean";
            exec(str,(error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    call();
                }else{
                    console.log(stderr);
                    console.log(stdout);
                    call();
                }
            });
        }
    ],
        function(err, result){
            Print.show_footer();
        });
};
module.exports.react_device_build_deploy_old = function () {
    async.series([
        function(call){
            Print.show_header('BiZ9 Framework Mobile React Device Build Deploy');
            call();
        },
        function(call){
            //var str="react-native bundle --dev false --platform android --entry-file index.js --bundle-output ./android/app/src/main/assets/index.android.bundle --assets-dest ./android/app/src/main/res";
            var str = "react-native run-android";
            exec(str,(error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    call();
                }else{
                    console.log(stderr);
                    console.log(stdout);
                    call();
                }
            });
        },
        function(call){
            var str="react-native start";
            exec(str,(error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    return;
                }
                console.log(stderr);
                console.log(stdout);
                call();
            });
        },
    ],
        function(err, result){
            Print.show_footer();
        });
};
//bp need to test
module.exports.react_device_log_android_old = function () {
    async.series([
        function(call){
            Print.show_header('BiZ9 Framework Mobile React Device Log Android');
            call();
        },
        function(call){
            var str="npx react-native log-android";
            exec(str,(error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    call();
                }
                else{
                    console.log(stderr);
                    console.log(stdout);
                    call();
                }
            });
        },
        function(call){
        },
    ],
        function(err, result){
            Print.show_footer();
        });
};
module.exports.react_device_port_open_old = function () {
    let port='';
    async.series([
        function(call){
            Print.show_header('BiZ9 Framework Mobile React Device Port Open');
            call();
        },
        function(call){
            _port=prompt('Enter Device Port (1904 default):');
            if(!port){
                port="1904";
            }
            call();
        },
        function(call){
            exec("adb reverse tcp:"+port+" tcp:"+port, (error, stdout, stderr) => {
                if (error) {
                    console.log(error);
                    call();
                }else{
                    console.log(stderr);
                    console.log(stdout);
                    call();
                }
            });
        },
        function(call){
            console.log("Port "+ port + " open");
            Print.show_footer();
            call();
        },
    ],
        function(err, result){
            Print.show_footer();
        });
};
