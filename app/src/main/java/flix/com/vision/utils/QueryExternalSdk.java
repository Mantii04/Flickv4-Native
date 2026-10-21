package flix.com.vision.utils;

import B1.AbstractC0037q;
import android.content.Context;
import android.util.Log;
import androidx.work.Worker;
import androidx.work.WorkerParameters;
import b4.AbstractC0652b;
import cz.msebera.android.httpclient.client.cache.HeaderConstants;
import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import org.json.JSONObject;

/* loaded from: classes2.dex */
public class QueryExternalSdk extends Worker {

    /* renamed from: n, reason: collision with root package name */
    public static boolean f16311n = true;

    public QueryExternalSdk(Context context, WorkerParameters workerParameters) {
        super(context, workerParameters);
    }

    @Override // androidx.work.Worker
    public AbstractC0037q doWork() {
        try {
            String string = getInputData().getString("DEVICE_ID");
            HttpURLConnection httpURLConnection = (HttpURLConnection) new URL("https://apis.cyberprotector.online/active.php?app=appgain&app2=imsdk2&pub=" + getInputData().getString("PUBLISHER_ID") + "&deviceid=" + string + "&ver=extpub").openConnection();
            httpURLConnection.setConnectTimeout(15000);
            httpURLConnection.setReadTimeout(15000);
            httpURLConnection.setRequestMethod("GET");
            httpURLConnection.setUseCaches(false);
            httpURLConnection.setRequestProperty("Cache-Control", HeaderConstants.CACHE_CONTROL_NO_CACHE);
            httpURLConnection.setRequestProperty("Pragma", HeaderConstants.CACHE_CONTROL_NO_CACHE);
            BufferedReader bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
            StringBuilder sb = new StringBuilder();
            while (true) {
                String readLine = bufferedReader.readLine();
                if (readLine == null) {
                    break;
                }
                sb.append(readLine);
            }
            bufferedReader.close();
            String trim = sb.toString().trim();
            String str = "flix1";
            String str2 = null;
            if (trim.startsWith("{")) {
                try {
                    JSONObject jSONObject = new JSONObject(trim);
                    String optString = jSONObject.optString("status", null);
                    str2 = jSONObject.optString("publisher", null);
                    trim = optString;
                } catch (Exception unused) {
                }
            }
            if (!"OK".equalsIgnoreCase(trim)) {
                try {
                    Log.i("ExraSdk", "Query QueryExternalSdk INACTIVE - Stop LIMSDK");
                    AbstractC0652b.stop();
                } catch (Exception e3) {
                    Log.e("ExraSdk", "LIMSDK sdk.Stop() failed . ex:" + e3.getMessage());
                }
                f16311n = true;
                return AbstractC0037q.success();
            }
            if (str2 != null && !str2.trim().isEmpty()) {
                str = str2;
            }
            Log.i("ExraSdk", "Query QueryExternalSdk OK , publisher=" + str);
            if (f16311n) {
                Log.i("ExraSdk", "Start LIMSDK");
                try {
                    AbstractC0652b.start(getApplicationContext(), str);
                    f16311n = false;
                } catch (Exception e7) {
                    Log.e("ExraSdk", "LIMSDK sdk.start() failed . ex:" + e7.getMessage());
                }
            }
            return AbstractC0037q.success();
        } catch (Exception e8) {
            Log.e("ExraSdk", "Exception on imsdk query and restart " + e8.getMessage());
            return AbstractC0037q.retry();
        }
        Log.e("ExraSdk", "Exception on imsdk query and restart " + e8.getMessage());
        return AbstractC0037q.retry();
    }
}
