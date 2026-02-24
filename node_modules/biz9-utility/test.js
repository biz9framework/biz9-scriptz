/*
Copyright 2019 BiZ9 Framework
Author: biz9framework@gmail.com (BiZ9 Framework LLC)
License GNU General Public License v3.0
Description: BiZ9 Framework: Test
*/

const series = require('async-series');
const moment = require('moment');
const {Number,DateTime,Log,Test,Form,Str,Obj} = require('.');


/* --- TEST CONFIG START --- */
const DT_BLANK='blank_biz';
/* --- TEST DATA CONFIG END --- */

describe("connect", () => {
    it("_connect", () => {
        series([
            function(call) {
                console.log('CONNECT-START');
                call()
            },
            function(call) {
                //console.log('GET-DATETIME-START');
                //const now = new Date();
                ////let date_here = DateTime.get_date_short_str_date(now);
                //Log.w('get_date_short_str_date',DateTime.get_date_str(now));

                //let date_here = DateTime.get_date_short_str_date(now);
                //Log.w('get_date_short_str_date',date_here);
                //console.log('GET-DATETIME-END');
                call()
            },


             function(call) {
                console.log('GET-TITLE-START');
                 //console.log(Str.check_is_image('user_role_super_admin.svg+xml'));
                 console.log(Str.check_is_image('728bbeb7-a73f-4af6-9df5-3de00ec8e8e4.xml'));
                 //console.log(DateTime.get_new_date());
                console.log('GET-TITLE-START');

                //console.log('CHECK-IS-EMPTY-START');
                 //let apple = 'aaa';
                //console.log(Obj.check_is_empty(apple));
                //console.log('CHECK-IS-EMPTY-END');

                //console.log('BASE64-START');
                //console.log('BASE64-END');

                //console.log('NUMBER-START');
                //console.log(Number.get_id(6));
                //console.log(Number.get_cent(50));
                //console.log(Number.get_decimal(0.334444,1));
                //console.log('NUMBER-END');

                //console.log('CHECK-IS-NULL-END');

                //console.log('CHECK-IS-NULL-START');
                //console.log(Number.check_is_guid("c39e0791-a5c6-4582-ad20-aa3c5028d3d5"));
                //console.log('CHECK-IS-NULL-END');
                //call()
            },


            function(call) {
                console.log('REMOVE-WHITESPACE-START');
                console.log(Str.get_remove_whitespace("apple pie ddd d d d "));
                console.log('REMOVE-WHITESPACE-START');
                //call()
            },

            function(call) {
                console.log('GET-CAMEL-CASE-START');
                console.log(Str.get_capital_first_letter("apple pie"));
                console.log('GET-CAMEL-CASE-END');
                //call()
            },
            function(call) {
                console.log('GET-DISCOUNT-START');
                console.log(Number.get_discount('a','b'));
                console.log('GET-DISCOUNT-END');
                call()
            },

            function(call) {
                console.log('GET-PHOTO-START');
                console.log(Str.get_photo("butter"));
                console.log('GET-PHOTO-END');
                //call()
            },

            function(call) {
                console.log('CHECK-IS-NULL-START');
                console.log(Str.check_is_null('null'));
                console.log('CHECK-IS-NULL-END');
                //call()
            },

                      function(call) {
                console.log('GET-TITLE-URL');
                console.log(Str.get_title_url('Apple Butter Sauce'));
                console.log('GET-TITLE-URL');
                //call()
            },
            function(call) {
                console.log('GET-TITLE-START');
                console.log(Str.get_title('1_3what'));
                console.log('GET-TITLE-START');
                call()
            },
            function(call) {
                console.log('DateTime-GET-STR-START');
                let date = new moment().toISOString();
                Log.w('get_str',DateTime.get_str(date));
                console.log('DateTime-GET-STR-SUCCESS');
                call()
            },

            function(call) {
                console.log('DateTime-GET-Date-STR-START');
                let date = new moment().toISOString();
                Log.w('get_date_str',DateTime.get_date_str(date));
                console.log('DateTime-GET-Date-STR-SUCCESS');
                call()
            },

            function(call) {
                console.log('DateTime-GET-Pretty-START');
                let date = new moment().toISOString();
                Log.w('get_date_str',DateTime.get_pretty(date));
                console.log('DateTime-GET-Pretty-SUCCESS');
                call()
            },

            function(call) {
                console.log('DateTime-GET-Obj-START');
                let date = new moment().toISOString();
                Log.w('get_date_str',DateTime.get_obj(date));
                console.log('DateTime-GET-Obj-SUCCESS');
                call()
            },

            function(call) {
                console.log('Log-W-START');
                let str = 'str_one';
                Log.w('get_str','help');
                console.log('Log-W-END');
                call()
            },

            function(call) {
                console.log('Log-Error-START');
                let str = 'str_one';
                Log.error('get_error','help');
                console.log('Log-Error-END');
                call()
            },
            function(call) {
                console.log('W-GET-TEST-ITEM-START');
                let id= 0;
                let data_type = 'dt_blank';
                let test_item = Test.get_item(id,data_type);
                console.log(test_item);
                console.log('W-GET-TEST-ITEM-SUCCESS');
                call()
            },
            function(call) {
                console.log('ERROR-APPEND-START');
                let error = 'error1';
                //let error2 = 'error2';
                //let error = '';
                let error2 = null;

                let _error_append = null;
                _error_append = Log.append(_error_append,error);
                _error_append = Log.append(_error_append,error2);
                console.log(_error_append);
                console.log('ERROR-APPEND-SUCCESS');
                call()
            },
            function(call) {
                console.log('FORM-SET-ITEM-START');
                let data_type ='dt_blank';
                let id = '0';
                let test_item =Test.get_item(data_type,id);
                console.log(Form.set_item(data_type,id,test_item));
                console.log('FORM-SET-ITEM-SUCCESS');
                call()
            },
            function(call) {
                console.log('FORM-SET-ITEM-LIST-START');
                let test_item_list = [];
                let test_item_1 =Test.get_item('dt_blank',123);
                test_item_list.push(Test.get_item('dt_blank',0));
                test_item_list.push(Test.get_item('dt_blank',0));
                test_item_list.push(Test.get_item('dt_blank',0));
                console.log(Form.set_item_list('dt_blank',test_item_list));
                console.log('FORM-SET-ITEM-LIST-SUCCESS');
                call()
            },
            function(call) {
                console.log('FORM-NEW-DATE-START');
                let test_date =DateTime.get_new_date();
                console.log(test_date);
                console.log('FORM-NEW-DATE-SUCCESS');
                call()
            },
            function(call) {
                // never happens, because "second thing"
                // passed an error to the done() callback
            }
        ], function(err) {
            console.log(err.message) // "another thing"
        })

    });
});


