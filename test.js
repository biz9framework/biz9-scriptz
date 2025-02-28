import { get_biz9_config } from "./";
const BIZ9_SRC_FILE = "./biz9_config";
test('connect', async () => {
    console.log('GET-BIZ9-File-START');
    let biz9_config_file = get_biz9_config(BIZ9_SRC_FILE);
    console.log('biz9_config_file',biz9_config_file);
     console.log('GET-BIZ9-File-SUCCESS');
});

