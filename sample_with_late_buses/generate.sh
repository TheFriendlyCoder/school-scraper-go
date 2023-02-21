#!/bin/bash
curl 'https://dsfsbp.nbed.nb.ca//Alerts.aspx/GetBusNotifications?draw=2&columns%5B0%5D%5Bdata%5D=&columns%5B0%5D%5Bname%5D=&columns%5B0%5D%5Bsearchable%5D=true&columns%5B0%5D%5Borderable%5D=false&columns%5B0%5D%5Bsearch%5D%5Bvalue%5D=&columns%5B0%5D%5Bsearch%5D%5Bregex%5D=false&columns%5B1%5D%5Bdata%5D=RouteRun&columns%5B1%5D%5Bname%5D=&columns%5B1%5D%5Bsearchable%5D=true&columns%5B1%5D%5Borderable%5D=true&columns%5B1%5D%5Bsearch%5D%5Bvalue%5D=&columns%5B1%5D%5Bsearch%5D%5Bregex%5D=false&columns%5B2%5D%5Bdata%5D=Operator&columns%5B2%5D%5Bname%5D=&columns%5B2%5D%5Bsearchable%5D=true&columns%5B2%5D%5Borderable%5D=true&columns%5B2%5D%5Bsearch%5D%5Bvalue%5D=&columns%5B2%5D%5Bsearch%5D%5Bregex%5D=false&columns%5B3%5D%5Bdata%5D=Action&columns%5B3%5D%5Bname%5D=&columns%5B3%5D%5Bsearchable%5D=true&columns%5B3%5D%5Borderable%5D=true&columns%5B3%5D%5Bsearch%5D%5Bvalue%5D=&columns%5B3%5D%5Bsearch%5D%5Bregex%5D=false&columns%5B4%5D%5Bdata%5D=AffectsSchools&columns%5B4%5D%5Bname%5D=&columns%5B4%5D%5Bsearchable%5D=true&columns%5B4%5D%5Borderable%5D=true&columns%5B4%5D%5Bsearch%5D%5Bvalue%5D=&columns%5B4%5D%5Bsearch%5D%5Bregex%5D=false&columns%5B5%5D%5Bdata%5D=TransfersSchools&columns%5B5%5D%5Bname%5D=&columns%5B5%5D%5Bsearchable%5D=true&columns%5B5%5D%5Borderable%5D=true&columns%5B5%5D%5Bsearch%5D%5Bvalue%5D=&columns%5B5%5D%5Bsearch%5D%5Bregex%5D=false&columns%5B6%5D%5Bdata%5D=Comment&columns%5B6%5D%5Bname%5D=&columns%5B6%5D%5Bsearchable%5D=true&columns%5B6%5D%5Borderable%5D=true&columns%5B6%5D%5Bsearch%5D%5Bvalue%5D=&columns%5B6%5D%5Bsearch%5D%5Bregex%5D=false&columns%5B7%5D%5Bdata%5D=PostedTimeDisplay&columns%5B7%5D%5Bname%5D=&columns%5B7%5D%5Bsearchable%5D=true&columns%5B7%5D%5Borderable%5D=true&columns%5B7%5D%5Bsearch%5D%5Bvalue%5D=&columns%5B7%5D%5Bsearch%5D%5Bregex%5D=false&order%5B0%5D%5Bcolumn%5D=1&order%5B0%5D%5Bdir%5D=asc&start=0&length=100&search%5Bvalue%5D=&search%5Bregex%5D=false&_=1676982205423' \
-X 'GET' \
-H 'Accept: application/json, text/javascript, */*; q=0.01' \
-H 'Content-Type: application/json; charset=utf-8' \
-H 'Cookie: _ga=GA1.3.502971410.1676981395; _gid=GA1.3.407504401.1676981395; _gat=1; Culture=fr-CA; DatabaseGuid=5c1a9842-d006-49a9-a445-102b5ab24f89; ASP.NET_SessionId=zudcbbftdnedo50fbt440ol5; __AntiXsrfToken=bd466fed7d9f41f2a52a0f882092e2ac' \
-H 'Accept-Language: en-CA,en-US;q=0.9,en;q=0.8' \
-H 'Host: dsfsbp.nbed.nb.ca' \
-H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.2 Safari/605.1.15' \
-H 'Referer: https://dsfsbp.nbed.nb.ca//Alerts.aspx/GetBusNotifications' \
-H 'Accept-Encoding: gzip, deflate, br' \
-H 'Connection: keep-alive' \
-H 'X-Requested-With: XMLHttpRequest'


# Steps to reproduce:
# 1. Open main page in Safari: https://dsfsbp.nbed.nb.ca//Alerts.aspx/GetBusNotifications
# 2. Open debug tools: Mac+Ctrl+I
# 3. refresh page
# 4. open network tab in debug tools
# 5. look towards the bottom of the operations for 3 operations: GetBusNotification, GetGeneralNotices and GetSchoolNotifications
# 6. Right-click each one and select "Copy as "cURL""

# GET //Alerts.aspx/GetBusNotifications HTTP/1.1
# Accept: application/json, text/javascript, */*; q=0.01
# Content-Type: application/json; charset=utf-8
# Cookie: _ga=GA1.3.502971410.1676981395; _gid=GA1.3.407504401.1676981395; _gat=1; Culture=fr-CA; DatabaseGuid=5c1a9842-d006-49a9-a445-102b5ab24f89; ASP.NET_SessionId=zudcbbftdnedo50fbt440ol5; __AntiXsrfToken=bd466fed7d9f41f2a52a0f882092e2ac
# Accept-Language: en-CA,en-US;q=0.9,en;q=0.8
# Host: dsfsbp.nbed.nb.ca
# User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.2 Safari/605.1.15
# Referer: https://dsfsbp.nbed.nb.ca//Alerts.aspx/GetBusNotifications
# Accept-Encoding: gzip, deflate, br
# Connection: keep-alive
# X-Requested-With: XMLHttpRequest


# curl 'https://dsfsbp.nbed.nb.ca//Alerts.aspx/GetGeneralNotices?draw=2&columns%5B0%5D%5Bdata%5D=&columns%5B0%5D%5Bname%5D=&columns%5B0%5D%5Bsearchable%5D=true&columns%5B0%5D%5Borderable%5D=false&columns%5B0%5D%5Bsearch%5D%5Bvalue%5D=&columns%5B0%5D%5Bsearch%5D%5Bregex%5D=false&columns%5B1%5D%5Bdata%5D=Message&columns%5B1%5D%5Bname%5D=&columns%5B1%5D%5Bsearchable%5D=true&columns%5B1%5D%5Borderable%5D=true&columns%5B1%5D%5Bsearch%5D%5Bvalue%5D=&columns%5B1%5D%5Bsearch%5D%5Bregex%5D=false&columns%5B2%5D%5Bdata%5D=PostedTimeDisplay&columns%5B2%5D%5Bname%5D=&columns%5B2%5D%5Bsearchable%5D=true&columns%5B2%5D%5Borderable%5D=true&columns%5B2%5D%5Bsearch%5D%5Bvalue%5D=&columns%5B2%5D%5Bsearch%5D%5Bregex%5D=false&order%5B0%5D%5Bcolumn%5D=2&order%5B0%5D%5Bdir%5D=desc&start=0&length=10&search%5Bvalue%5D=&search%5Bregex%5D=false&_=1676982205421' \
# -X 'GET' \
# -H 'Accept: application/json, text/javascript, */*; q=0.01' \
# -H 'Content-Type: application/json; charset=utf-8' \
# -H 'Cookie: _ga=GA1.3.502971410.1676981395; _gid=GA1.3.407504401.1676981395; _gat=1; Culture=fr-CA; DatabaseGuid=5c1a9842-d006-49a9-a445-102b5ab24f89; ASP.NET_SessionId=zudcbbftdnedo50fbt440ol5; __AntiXsrfToken=bd466fed7d9f41f2a52a0f882092e2ac' \
# -H 'Accept-Language: en-CA,en-US;q=0.9,en;q=0.8' \
# -H 'Host: dsfsbp.nbed.nb.ca' \
# -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.2 Safari/605.1.15' \
# -H 'Referer: https://dsfsbp.nbed.nb.ca//Alerts.aspx/GetBusNotifications' \
# -H 'Accept-Encoding: gzip, deflate, br' \
# -H 'Connection: keep-alive' \
# -H 'X-Requested-With: XMLHttpRequest'


# curl 'https://dsfsbp.nbed.nb.ca//Alerts.aspx/GetSchoolNotifications?draw=2&columns%5B0%5D%5Bdata%5D=&columns%5B0%5D%5Bname%5D=&columns%5B0%5D%5Bsearchable%5D=true&columns%5B0%5D%5Borderable%5D=false&columns%5B0%5D%5Bsearch%5D%5Bvalue%5D=&columns%5B0%5D%5Bsearch%5D%5Bregex%5D=false&columns%5B1%5D%5Bdata%5D=School&columns%5B1%5D%5Bname%5D=&columns%5B1%5D%5Bsearchable%5D=true&columns%5B1%5D%5Borderable%5D=true&columns%5B1%5D%5Bsearch%5D%5Bvalue%5D=&columns%5B1%5D%5Bsearch%5D%5Bregex%5D=false&columns%5B2%5D%5Bdata%5D=AlertType&columns%5B2%5D%5Bname%5D=&columns%5B2%5D%5Bsearchable%5D=true&columns%5B2%5D%5Borderable%5D=true&columns%5B2%5D%5Bsearch%5D%5Bvalue%5D=&columns%5B2%5D%5Bsearch%5D%5Bregex%5D=false&columns%5B3%5D%5Bdata%5D=Reason&columns%5B3%5D%5Bname%5D=&columns%5B3%5D%5Bsearchable%5D=true&columns%5B3%5D%5Borderable%5D=true&columns%5B3%5D%5Bsearch%5D%5Bvalue%5D=&columns%5B3%5D%5Bsearch%5D%5Bregex%5D=false&columns%5B4%5D%5Bdata%5D=PostedTimeDisplay&columns%5B4%5D%5Bname%5D=&columns%5B4%5D%5Bsearchable%5D=true&columns%5B4%5D%5Borderable%5D=true&columns%5B4%5D%5Bsearch%5D%5Bvalue%5D=&columns%5B4%5D%5Bsearch%5D%5Bregex%5D=false&order%5B0%5D%5Bcolumn%5D=4&order%5B0%5D%5Bdir%5D=desc&start=0&length=10&search%5Bvalue%5D=&search%5Bregex%5D=false&_=1676982205422' \
# -X 'GET' \
# -H 'Accept: application/json, text/javascript, */*; q=0.01' \
# -H 'Content-Type: application/json; charset=utf-8' \
# -H 'Cookie: _ga=GA1.3.502971410.1676981395; _gid=GA1.3.407504401.1676981395; _gat=1; Culture=fr-CA; DatabaseGuid=5c1a9842-d006-49a9-a445-102b5ab24f89; ASP.NET_SessionId=zudcbbftdnedo50fbt440ol5; __AntiXsrfToken=bd466fed7d9f41f2a52a0f882092e2ac' \
# -H 'Accept-Language: en-CA,en-US;q=0.9,en;q=0.8' \
# -H 'Host: dsfsbp.nbed.nb.ca' \
# -H 'User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/16.2 Safari/605.1.15' \
# -H 'Referer: https://dsfsbp.nbed.nb.ca//Alerts.aspx/GetBusNotifications' \
# -H 'Accept-Encoding: gzip, deflate, br' \
# -H 'Connection: keep-alive' \
# -H 'X-Requested-With: XMLHttpRequest'