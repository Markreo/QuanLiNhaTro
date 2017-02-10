/**
 * Created by giapn on 2/9/2017.
 */
var tabs = [];
tabs = JSON.parse(readCookie("tab_url"));

function submitform(id) {
    if(id == undefined){
        $("#page-body").find("form").submit()
    } else{
        $("#page-body").find("form#" + id).submit()
    }

}

function cancel() {
    GoLastTab();
    SaveCookie();
}

//save Cookie
function SaveCookie(url) {
    var cookie = [];
    if(tabs){
        $.each(tabs, function(idx, val){
            cookie.push(val);
        });
    }
    if(url){
        cookie.push(url);
    }
    createCookie('tab_url', JSON.stringify(cookie));
}

function complete_form(data) {
    console.log('complete form')
    console.log(data)

    if(typeof data.reload != 'undefined'){
        if(data.reload){
            location.reload();
        }
        return;
    }

    if(typeof data.close != 'undefined'){
        GoLastTab();
    }
    if(typeof data.error != 'undefined'){
        $("#main_error").show();
        $("#main_error_content").html("");
        $("#main_error_content").append(data.message.content);
    }
    if(typeof  data.message != 'undefined'){
        console.log('notify')
        var icon;
        switch (data.message.type){
            case 'success': icon =  'fa-check'; break;
            case 'error': icon = 'fa-times'; break;
            case 'warring': icon = 'fa-warning'; break;
            default: icon = 'fa-info'; break;
        }
        Notify(data.message.content, 'top-right', '5000', data.message.type, icon, true);
    }

    if(typeof data.code != 'undefined'){
        console.log(data.code)
        switch (data.code){
            case 'update_region': {
                loadpage();
            }; break;
        }
    }
}

//Go tab
function GoTab(url) {
    $.post(url, function (html) {
        $("#page-body").html(html);
    })
}

//last tab
function GoLastTab() {
    if(tabs.length){
        var url_older = tabs.pop();
        GoTab(url_older);
    } else{
        $("#page-body").html("");
    }
    SaveCookie();
}

var loadpage = function () {
    $.post("home/loadpage", function (data) {
        $("#main_userName").html(data.username);
        $("#main_dasboard").html(data.regionname);
        $("#main_regions").remove("a[rel='region']");
        $("#main_regions").append(data.list);
    })
}

$(document).ready(function () {

    loadpage();

    //COOKIE
    if(tabs){
        console.log()
        var url = tabs.pop();
        if(url){
            $.post(url, function (html) {
                $("#page-body").html(html);
            })
        }
    }

    //NEW TAB
    $(document).on('click', "a[rel='new-tab']", function (event) {
        event.preventDefault();
        var url = $(this).attr('href');
        SaveCookie(url);
        GoTab(url);
    })
})