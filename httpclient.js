const HttpClient = function() {
    let http = new XMLHttpRequest();

    this.get = (url, successCallBack, failedCallBack) => {
        http.onreadystatechange = () => {
            if (http.readyState == 4 && http.status == 200) {
                successCallBack(http.responseText);
            } else {
                failedCallBack(http.responseText);
            }
        };

        http.open("GET", url, true);
        http.send(null);
    };
};