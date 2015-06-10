package us.cordova.swrve;

import org.apache.cordova.CordovaPlugin;
import org.apache.cordova.CallbackContext;

import com.swrve.sdk.*;
import com.swrve.sdk.config.*;

import java.util.Iterator;
import java.util.ArrayList;
import java.util.HashMap;

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
        else if ("sendEventWithPayload".equals(action)) {

            String event = args.getString(0);
            Log.d(TAG, event);
            JSONObject payloadArg = args.getJSONObject(1);
            
            if(payloadArg != null) {
                Log.d(TAG, payloadArg.toString());
                HashMap<String,String> empyMap = new HashMap<String, String>();
                HashMap<String, String> payload = this.addToMap(empyMap, payloadArg);
                SwrveInstance.getInstance().event(event, payload);
            } else {
                SwrveInstance.getInstance().event(event);
            }
            
            return true;
        }

        return false;  // Returning false results in a "MethodNotFound" error.
    }

    private HashMap<String, String> addToMap(HashMap<String, String> map, JSONObject object) throws JSONException {
        HashMap<String, String> newMap = (HashMap<String, String>)map.clone();
        Iterator<?> i = object.keys();

        while (i.hasNext()) {
            String key = (String)i.next();
            newMap.put(key, object.getString(key));
        }
        return newMap;
    }

   
}
