import { Config } from "./";
const BIZ9_SRC_FILE = "./biz9_config";
test('connect', async () => {
    console.log('GET-BIZ9-File-START');
    let biz9_config_file = Config.get_biz9(BIZ9_SRC_FILE);
    console.log('biz9_config_file',biz9_config_file);
    console.log('GET-BIZ9-File-SUCCESS');
});

