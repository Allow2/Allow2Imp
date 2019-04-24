//
//  Allow2Imp.agent.lib.nut
//
//
//  Created by Andrew Longhorn on 24/4/19.
//  Copyright © 2019 Allow2 Pty Ltd. All rights reserved.
//
// LICENSE:
//  See LICENSE file in root directory
//

const ALLOW2_API = "https://api.allow2.com";

class Allow2 {

    static version = "0.1.0";

    _deviceToken = null;
    _environment = "production";
    _tz = "Australia/Brisbane";

    _userId = null;
    _pairToken = null;

    // Allow2 object constructor
    //
    // @param {string} deviceToken          - Unique Device Type Token from Allow2 developer portal (ie: "iug893-kjg-fiug23")
    //
    // Returns: Allow2 object created
    constructor(deviceToken) {
        _deviceToken = deviceToken;
        _environment =
    }

    function pair() {
        _userId = 1;                                        // - UserId for Parent Account (User or Customer/Device Owner)
        _pairToken = "98hbieg87-ilulieugil-dilufkucy";      // - auth token from pairing request (ie: "98hbieg87-ilulieugil-dilufkucy")
    }

    function setChild(childId) {

    }

    // Checks Allow2 for usage permissions
    //
    // @param {table} params                - table with parameters:
    // @param {array} activities            - eg: [1, 2, 3, 8] - see all "activities" at https://developer.allow2.com
    // @param {bool} log                    - should we log activity (true - default)? Or just check permissions (false)
    // @param {function} callback           - Callback function that takes two parameters (err, Allow2Result)
    //
    function invoke(activities, log = true, callback = null) {
        local contentType = "contentType" in params && params["contentType"]
                            ? strip(params["contentType"].tolower())
                            : AWS_LAMBDA_APPJSON_CONTENT_TYPE;
        local headers = {
            "Content-Type": contentType
        };
        local body = contentType == AWS_LAMBDA_APPJSON_CONTENT_TYPE
                     ? http.jsonencode(params.payload)
                     : params.payload;
        _awsRequest.post(AWS_LAMBDA_URL_PREFIX + params.functionName + "/invocations", headers, body, callback);
    }
}
