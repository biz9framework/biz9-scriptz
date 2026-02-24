/*
Copyright 2019 BiZ9 Framework
Author: biz9framework@gmail.com (BiZ9 Framework LLC)
License GNU General Public License v3.0
Description: BiZ9 Framework: Utility - Main
*/
const moment = require('moment');
const dayjs = require('dayjs');
const prettydate = require('pretty-date');
const get_discount_main=(old_cost,now_cost)=>{
    if(isNaN(old_cost)){
        old_cost=parseFloat(0.00);
    }
    if(isNaN(now_cost)){
        now_cost=parseFloat(0.00);
    }
    let discount = old_cost - now_cost;
    let r_discount  = String(parseInt(((discount / old_cost) * 100))) + "%";
    if(isNaN(r_discount)){
        r_discount=parseFloat(0.00) + "%";
    }
    return r_discount;
}
const check_is_guid_main=(str)=>{
    const guidRegex = /^[0-9a-fA-F]{8}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{4}-[0-9a-fA-F]{12}$/;
    return guidRegex.test(str);
}
const get_full_date_by_date_time_main=(date,time)=>{
    return moment(date+ " " + time, 'YYYY-MM-DD h:mm').format("dddd MMMM Do, YYYY");
}
const get_capital_first_letter_main=(str)=>{
    if(check_is_null_main(str)){
        str = "";
    }
    const words = str.split(' ');
    const capitalizedWords = words.map(word => {
        if (word.length === 0) {
            return '';
        }
        return word.charAt(0).toUpperCase() + word.slice(1);
    });
    return capitalizedWords.join(' ');
}
const get_full_time_by_date_time_main=(date,time)=>{
    return moment(date+ " " + time, 'YYYY-MM-DD h:mm').format("h:mm a");
}
const get_full_date_time_by_date_time_main=(date,time)=>{
    return moment(date+ " " + time, 'YYYY-MM-DD h:mm').format("dddd MMMM Do, YYYY h:mm a");
}
const get_guid_main=()=>{
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function(c) {
        let r = Math.random() * 16 | 0, v = c == 'x' ? r : (r & 0x3 | 0x8);
        return v.toString(16);
    });
}
const get_id_main=(max)=>{
    if(!max){
        max = 99999;
    }
    let min = 0;
    return Math.floor(Math.random() * (max - min)) + min;
}
const error_main=(title,str)=>{
    const now = new Date();
    const formattedDateTimeLocale = now.toLocaleString('en-US', {
        year: 'numeric',
        month: '2-digit',
        day: '2-digit',
        hour: '2-digit',
        minute: '2-digit',
        second: '2-digit',
        hour12: false
    });
    if(!str){
        str='null';
    }
    if(!str){
        str=title;
        title='';
    }
    if(!str){
        str='error null';
    }
    console.error(String(title).toUpperCase()+ '___START__________________'+formattedDateTimeLocale);
    console.error(str);
    console.error(String(title).toUpperCase()+ '___END_____________________'+formattedDateTimeLocale);
}
const w_main=(title,str)=>{
    const now = new Date();
    const formattedDateTimeLocale = now.toLocaleString('en-US', {
        year: 'numeric',
        month: '2-digit',
        day: '2-digit',
        hour: '2-digit',
        minute: '2-digit',
        second: '2-digit',
        hour12: false
    });
    if(!str){
        str='null';
    }
    console.log(String(title).toUpperCase()+ '___START__________________'+formattedDateTimeLocale);
    console.log(str);
    console.log(String(title).toUpperCase()+ '___END_____________________'+formattedDateTimeLocale);
}
const message_append_main=(message,new_message)=>{
    let append = false;
    if(new_message){
        if(!message){
            message='';
            append=true;
        }
        if(append){
            new_message = ' ' + new_message + ",";
            message = message + new_message
        }
    }
    return message;
}
const get_new_date_main=()=>{
    return dayjs().toISOString();
}
const get_date_time_str_main=(datetime)=>{
    //Tuesday, February 14th 2023, at 2:39 am
    return String(moment(datetime).format("dddd MMMM Do, YYYY h:mm a"));
}
const get_date_str_main=(date)=>{
    //Tuesday, February 14th 2023
    if(date){
        return String(moment(date).format("dddd MMMM Do, YYYY"));
    }
    else{
        return 'Invalid Date Format';
    }
}
const get_date_short_str_main=(date)=>{
    //21-May-2020
    if(date){
        let date_obj=get_date_time_obj_main(date);
        let month=get_month_title_short_main(date_obj.month());
        let day=date_obj.date();
        let year=date_obj.year();
        return day+"-"+month+"-"+year;
    }
    else{
        return 'Invalid Date Format';
    }
}
const get_date_time_pretty_main=(date)=>{
    if(date){
        return prettydate.format(new Date(date));
    }
    else{
        return null;
    }
}
const get_currency_main=(amount)=>{
    return Math.round(100 * parseFloat(typeof amount === 'string' ? amount.replace(/[$,]/g, '') : amount));
}
const get_contains_main=(value,searchFor)=>{
    return (value || '').indexOf(searchFor) > -1;
}
const get_time_str_main=(date)=>{
    if(date){
        let t=moment(date);
        return t.format("h:mm a");
    }
    else{
        let t = moment();
        return t.format("h:mm a");
    }
}
const get_money_main=(_n)=>{
    let n = parseFloat(_n);
    if(!n || isNaN(n)){
        n = 0;
    }
    return "$"+n.toFixed(2).replace(/\d(?=(\d{3})+\.)/g, "$&,");
}
const get_cent_main=(number)=>{
    return  parseInt((Number(number)*100)).toString();
}
const get_decimal_main=(n,decimal)=>{
    return parseFloat(n).toFixed(decimal);
}
const remove_html_str_main = (str)=>{
    let regex = /(<([^>]+)>)/ig;
    let _data = "";
    if(str){
        _data = str.replace(regex,"");
    }
    return _data;
}
const get_date_time_obj_main=(date)=>{
    if(date){
        return moment(date);
    }
    else{
        return moment(new Date());
    }
}
const get_iso_str_by_date_time_main=(date,time)=>{
    if(date){
        return moment(date+ ' ' + time).toISOString();
    }
    else{
        return moment().toISOString();
    }
}
const remove_money_main=(n)=>{
    if(!n){
        n='0';
    }
    return String(n).replace('$','');
}
const get_month_title_short_main=(d)=>{
    if(d==12){
        d=1;
    }else{
        d=d+1;
    }
    switch(d) {
        case 1:
            return 'Jan';
            break;
        case 2:
            return 'Feb';
            break;
        case 3:
            return 'Mar';
            break;
        case 4:
            return 'Apr';
            break;
        case 5:
            return 'May';
            break;
        case 6:
            return 'Jun';
            break;
        case 7:
            return 'Jul';
            break;
        case 8:
            return 'Aug';
            break;
        case 9:
            return 'Sep';
            break;
        case 10:
            return 'Oct';
            break;
        case 11:
            return 'Nov';
            break;
        case 12:
            return 'Dec';
            break;
        default:
            return 'Jan';
    }
}
const get_month_title_main=(d)=>{
    switch(d){
        case 1:
            return 'January';
            break;
        case 2:
            return 'February';
            break;
        case 3:
            return 'March';
            break;
        case 4:
            return 'April';
            break;
        case 5:
            return 'May';
            break;
        case 6:
            return 'June';
            break;
        case 7:
            return 'July';
            break;
        case 8:
            return 'August';
            break;
        case 9:
            return 'September';
            break;
        case 10:
            return 'October';
            break;
        case 11:
            return 'November';
            break;
        case 12:
            return 'December';
            break;
        default:
            return 'January';
    }
}
const text_truncate_main=(str,length,ending)=>{
    if (length==null){length=100;
    }
    if (ending == null) {
        ending = '...';
    }
    if (str.length>length) {
        return str.substring(0,length-ending.length)+ending;
    } else {
        return str;
    }
}
const validate_email_main=(email)=>{
    const re = /^(([^<>()[\]\\.,;:\s@"]+(\.[^<>()[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    return re.test(String(email).toLowerCase());
}
const validate_password_main=(password)=>{
     const minLength = 7;
     const maxLength = 15;
    // Check length
    if (password.length < minLength || password.length > maxLength) {
        return "Password must be between " + minLength + " and " + maxLength + " characters long.";
    }
    // Check for at least one uppercase letter
    if (!/[A-Z]/.test(password)) {
        return "Password must contain at least one uppercase letter.";
    }
    // Check for at least one lowercase letter
    if (!/[a-z]/.test(password)) {
        return "Password must contain at least one lowercase letter.";
    }
    // Check for at least one digit
    if (!/\d/.test(password)) {
        return "Password must contain at least one digit.";
    }
    // Check for at least one special character
    if (!/[!@#$%^&*()]/.test(password)) { // You can expand this set of special characters
        return "Password must contain at least one special character.";
    }
    return true; // All checks passed
}
const get_paging_list_main=(data_list,current_page,page_size)=>{
    return new Promise((callback)=>{
        let error=null;
        if(current_page>=1||!current_page){
            current_page=1;
        }
        let item_count = data_list.length;
        let skip = page_size * (current_page - 1);
        let page_count = Math.ceil(item_count / page_size);
        let new_data_list = data_list.slice(skip, skip + page_size);
        callback([new_data_list,item_count,page_count]);
    });
}
const get_older_date_main=(date_1,date_2)=>{
    if(date_1.getTime()<date_2.getTime()){
        return 'date1';
    }else{
        return 'date2';
    }
}
const set_form_item_list_main=(data_type,item_list_data)=>{
    for (a=0;a<item_list_data.length;a++){
        item_list_data['data_type']=data_type;
    }
    return item_list_data;
}
const set_form_item_main=(data_type,id,item_data,option)=>{
    if(!data_type){
        data_type='dt_blank';
    }
    if(!id){
        id=0;
    }
    var item={};
    for (key in item_data) {
        item[key]=String(item_data[key]).trim();
    }
    item['id']=id;
    item['data_type']=data_type;
    if(!option){
        option = {};
    }
    if(option){
        for (const key in option) {
            item[key] = option[key];
        }
    }
    return item;
}
const get_title_main=(str,plural)=>{
    if(!str){
        str='';
    }
    if(plural){
        str = str + "s";
    }
    return str.replace(
        /\w\S*/g,
        text => text.charAt(0).toUpperCase() + text.substring(1).toLowerCase()
    );
}
const get_title_url_main=(title)=>{
    if(!title){
        title='';
    }
    return String(title).replace(/[^a-z0-9]+/ig, "_").toLowerCase();
}
const check_is_base64_main=(str)=>{
    const base64RegExp = /^(?:[A-Za-z0-9+/]{4})*(?:[A-Za-z0-9+/]{2}==|[A-Za-z0-9+/]{3}=|[A-Za-z0-9+/]{4})$/;
    return base64RegExp.test(str);
}
const check_is_null_main=(str)=>{
    if(!str){
        return true;
    }
    else if(str == null){
        return true;
    }
    else if(typeof str === 'undefined') {
        return true;
    }
    else if(str === undefined) {
        return true;
    }
    else if(String(str) == 'undefined') {
        return true;
    }
    else if(String(str) == undefined) {
        return true;
    }
    else if(str.length === 0){
        return true;
    }
    else if(str.length==0){
        return true;
    }
    else if(str === undefined || str == 0 || str == '0'){
        return true;
    }
    else if(String(str) =='null'){
        return true;
    }else{
        return false;
    }
}
function get_file_type_from_base64_main(base64Data) {
    if(!base64Data){
        base64Data="";
    }
      const regex = /^data:([a-zA-Z0-9]+\/[a-zA-Z0-9-.+]+)(;charset=[a-zA-Z0-9-]+)?(;base64)?,/;
      const matches = base64Data.match(regex);

      if (matches && matches.length >= 2) {
        const mimeType = matches[1]; // e.g., "image/png"
        const parts = mimeType.split('/');
        if (parts.length === 2) {
          const extension = parts[1]; // e.g., "png"
          return { mimeType: mimeType, extension: extension };
        }
        return { mimeType: mimeType, extension: null };
      }
      return null; // Not a valid data URL or MIME type not found
    }

module.exports = {
    w_main,
    error_main,
    get_guid_main,
    get_id_main,
    message_append_main,
    get_date_time_str_main,
    get_date_str_main,
    get_date_time_pretty_main,
    get_currency_main,
    get_contains_main,
    remove_html_str_main,
    get_new_date_main,
    get_time_str_main,
    get_date_time_obj_main,
    get_iso_str_by_date_time_main,
    remove_money_main,
    get_money_main,
    get_cent_main,
    get_month_title_short_main,
    get_month_title_main,
    text_truncate_main,
    validate_email_main,
    validate_password_main,
    get_paging_list_main,
    get_older_date_main,
    set_form_item_main,
    set_form_item_list_main,
    get_title_main,
    check_is_null_main,
    check_is_base64_main,
    get_title_url_main,
    get_full_date_by_date_time_main,
    get_full_time_by_date_time_main,
    get_full_date_time_by_date_time_main,
    get_discount_main,
    get_date_short_str_main,
    get_capital_first_letter_main,
    get_decimal_main,
    check_is_guid_main,
    get_file_type_from_base64_main
};
