const {Str} = require("biz9-utility");
const biz9_config_local=__dirname+"/../../"+"biz9_config";

class Scriptz {
    //options = {biz9_config_file:'file_to_biz9_config, APP_ID:dynamic_app_id};
    static get_biz9_config =(options) => {
        let biz9_config = {};
        let loc_biz9_config_file = null;
        if(!options){
            options={};
        }else{
            loc_biz9_config_file=options.biz9_config_file;
        }
        if(!options.biz9_config_file){
            loc_biz9_config_file=biz9_config_local;
        }
        if (typeof window === 'undefined') {
            const fs = require('fs');
            if (!fs.existsSync(loc_biz9_config_file)) {
                console.log('biz9_config_file',loc_biz9_config_file);
                console.log('File does not exist');
                console.log('BiZ9 Config File. No Source Availble.');
            } else {
                let fileContent = fs.readFileSync(loc_biz9_config_file, 'utf-8');
                let lines = fileContent.split('\n');
                lines.forEach(line => {
                    const [key, value] = line.split('=');
                    if (key && value) {
                        biz9_config[key] = value.replace(/"/g, '').replace(/'/g, '').replace(/;/g, ''); // Remove quotes
                    }
                });
                if(!Str.check_is_null(options.APP_ID)){
                    biz9_config.APP_ID=options.APP_ID;
                    biz9_config.app_id=options.APP_ID;
                }else if(!Str.check_is_null(options.app_id)){
                    biz9_config.APP_ID=options.app_id;
                    biz9_config.app_id=options.app_id;
                }
            }
        }
        return biz9_config;
    }
}

module.exports = {
    Scriptz,
};

