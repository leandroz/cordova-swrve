package us.cordova.swrve;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

import android.util.Log;

public class CordovaSwrve extends CordovaPlugin {

    private static final String TAG = "CordovaSwrve";

    public boolean execute(String action, JSONArray args, final CallbackContext callbackContext) throws JSONException {
        
        Log.d(TAG, action);

        if ("initialize".equals(action)) {

            callbackContext.success();

            return true;

        }
        else if ("showLoginUI".equals(action)) {


            return true;
        } else if ("login".equals(action)) {

            
            return true;
        } else if ("getSession".equals(action)) {
            

            return true;
        } else if("loginUserWithPassword".equals(action)) {
            

            return true;

        }
        else if ("sendRequest".equals(action)){


            return true;
        }
        else if ("logout".equals(action)){

            return true;
        }

        return false;  // Returning false results in a "MethodNotFound" error.
    }
   
}
