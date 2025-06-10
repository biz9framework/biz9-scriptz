/*
Copyright 2019 BiZ9 Framework
Author: biz9framework@gmail.com (BiZ9 Framework LLC)
License GNU General Public License v3.0
Description: BiZ9 Framework: Utility
*/
const {w_main,error_main,get_guid_main,get_id_main,message_append_main,get_test_item_main,get_date_time_str_main,get_date_str_main,get_date_time_pretty_main,get_currency_main,get_contains_main,remove_html_str_main,get_time_str_main,get_date_time_obj_main,get_iso_str_by_date_time_main,remove_money_main,get_money_main,get_cents_main,get_month_title_short_main,get_month_title_main,text_truncate_main,validate_email_main,get_paging_list_main,get_older_date_main,set_form_item_main,set_form_item_list_main,get_new_date_main,get_title_main,check_is_null_main,get_title_url_main,get_full_date_by_date_time_main,get_full_time_by_date_time_main,get_full_date_time_by_date_time_main,get_discount_main,get_date_short_str_main,get_capital_first_letter_main,check_is_guid_main} = require('./main');
class Form{
    static set_item = (data_type,id,item_data) => {
        return set_form_item_main(data_type,id,item_data);
    };
    static set_item_list = (data_type,item_list_data) => {
        return set_form_item_list_main(data_type,item_list_data);
    };
}
class Log{
    static w = (title,str) => {
        return w_main(title,str);
    };
    static error = (title,str) => {
        return error_main(title,str);
    };
    static append = (message,new_message) => {
        return message_append_main(message,new_message);
    };
}
class Test {
    static get_item = (data_type,id) => {
        return get_test_item_main(data_type,id);
    };
}
class Number {
    static get_id = (max) => {
        return get_id_main(max);
    };
    static get_guid = () => {
        return get_guid_main();
    };
    static get_money = (n) => {
        return get_money_main(n);
    };
    static get_discount = (old_cost, now_cost) => {
        return get_discount_main(old_cost,now_cost);
    };
    static check_is_guid = (str) => {
        return check_is_guid_main(str);
    };
}
class Str {
    static get_title = (str) => {
        return get_title_main(str);
    };
    static check_is_null = (str) => {
        return check_is_null_main(str);
    };
    static get_title_url = (title) => {
        return get_title_url_main(title);
    };
    static get_truncate = (str,max) => {
        if (str.length > max) {
            return str.substring(0, max) + "...";
        } else {
            return str;
        }
    };
    static validate_email = (email) => {
        return validate_email_main(email);
    };
    static get_photo = (photo_data) => {
        return photo_data = photo_data ? photo_data : "no_img.jpg";
    };
    static get_capital_first_letter = (str) => {
        return  get_capital_first_letter_main(str);
    };
    static get_remove_whitespace = (str) => {
        if(check_is_null_main(str)){
            str="";
        }
        return str.replace(/\s+/g, '');
    };
}
class DateTime {
    static get_new_date = () => {
        return get_new_date_main();
    };
    static get_str = (datatime) => {
        return get_date_time_str_main(datatime);
    };
    static get_date_str = (date) => {
        return get_date_str_main(date);
    };
    static get_time_str = (date) => {
        return get_time_str_main(date);
    };
    static get_pretty = (date) => {
        return get_date_time_pretty_main(date);
    };
    static get_obj = (date) => {
        return get_date_time_obj_main(date);
    };
    static get_month_title = (date) => {
        return get_month_title_main(date);
    };
    static get_full_date_by_date_time = (date,time) => {
        return get_full_time_by_date_time_main(date,time)
    };
    static get_full_time_by_date_time = (date,time) => {
        return get_full_time_by_date_time_main(date,time);
    };
    static get_full_date_time_by_date_time = (date,time) => {
        return get_full_date_time_by_date_time_main(date,time);
    };
    static get_date_short_str = (date) => {
        return get_date_short_str_main(date);
    };
}
module.exports = {
    Log,
    Number,
    Str,
    Form,
    Test,
    DateTime,
};
