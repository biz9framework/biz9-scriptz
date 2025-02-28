const biz9_config_file=__dirname+"/../../"+"biz9_config";

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

module.exports = {
    get_biz9_config,
};

