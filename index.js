const fs = require('fs');
const biz9_config_file=__dirname+"/../../"+"biz9_config";

class Config {
    static get_biz9 =(biz9_config_src) => {
        if(!biz9_config_src){
            biz9_config_src=biz9_config_file;
        }
        let biz9_config = {};
        let fileContent = fs.readFileSync(biz9_config_src, 'utf-8');
        let lines = fileContent.split('\n');
        lines.forEach(line => {
            const [key, value] = line.split('=');
            if (key && value) {
                biz9_config[key] = value.replace(/"/g, '').replace(/'/g, '').replace(/;/g, ''); // Remove quotes
            }
        });
        return biz9_config;
    };
}

module.exports = {
    Config,
};

