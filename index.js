const fs = require("fs");
const async=require("async");
const prompt = require('prompt-sync')();
const { exec } = require('child_process');
const biz9_config_file=__dirname+"/../../"+"biz9_config";
//const biz9_config_file=__dirname+"/biz9_config";
//const package_file=__dirname+"/../../"+"package.json";
//const biz9_config = require(biz9_config_file);
const get_biz9_config = () => {
biz9_config = {};
fileContent = fs.readFileSync(biz9_config_file, 'utf-8');
    lines = fileContent.split('\n');
        lines.forEach(line => {
            const [key, value] = line.split('=');
            if (key && value) {
                biz9_config[key] = value.replace(/"/g, '').replace(/'/g, '').replace(/;/g, ''); // Remove quotes
            }
        });
    return biz9_config;
};
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
module.exports = {
    get_biz9_config,
};

