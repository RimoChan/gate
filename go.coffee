getSearchString = () -> 
    str = location.search
    str = str.substring(1, str.length)
    
    obj = {}
    
    for item in str.split("&")
        tmp_arr = item.split("=");
        obj[decodeURIComponent(tmp_arr[0])] = decodeURIComponent(tmp_arr[1]);

    return obj;

tb = getSearchString()
if tb['a'] and tb['b']
    window.location.href = tb['b']
