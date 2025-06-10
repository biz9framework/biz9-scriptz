import { Scriptz } from "./";
const BIZ9_SRC_FILE = "./biz9_config";
test('connect', async () => {
    console.log('GET-BIZ9-File-START');
    //let biz9_config_file = Scriptz.get_biz9_config({biz9_config_file:BIZ9_SRC_FILE});
    let biz9_config = Scriptz.get_biz9_config();
    //let biz9_config = Scriptz.get_biz9_config({biz9_config_file:BIZ9_SRC_FILE,APP_ID:'my_script_app_id'});
    //let biz9_config = Scriptz.get_biz9_config({biz9_config_file:BIZ9_SRC_FILE,APP_ID:'my_script_app_id'});
    console.log('biz9_config',biz9_config);
    console.log('TITLE',biz9_config.TITLE);
    console.log('APP_ID',biz9_config.APP_ID);
    //console.log('REPO',biz9_config.REPO);
    //let biz9_config_file = Scriptz.get_biz9_config();
    //console.log('biz9_config_file',biz9_config);
    console.log('GET-BIZ9-File-SUCCESS');
});

