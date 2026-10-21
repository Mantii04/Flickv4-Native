package h2;

import com.android.volley.NetworkResponse;
import com.android.volley.ParseError;
import com.android.volley.Response;
import java.io.UnsupportedEncodingException;
import org.json.JSONException;
import org.json.JSONObject;

/* loaded from: classes.dex */
public class p extends q {
    public p(int i2, String str, JSONObject jSONObject, Response.Listener<JSONObject> listener, Response.ErrorListener errorListener) {
        super(i2, str, jSONObject == null ? null : jSONObject.toString(), listener, errorListener);
    }

    @Override // com.android.volley.Request
    public Response<JSONObject> parseNetworkResponse(NetworkResponse networkResponse) {
        try {
            return Response.success(new JSONObject(new String(networkResponse.data, AbstractC0974i.parseCharset(networkResponse.headers, "utf-8"))), AbstractC0974i.parseCacheHeaders(networkResponse));
        } catch (UnsupportedEncodingException e3) {
            return Response.error(new ParseError(e3));
        } catch (JSONException e7) {
            return Response.error(new ParseError(e7));
        }
    }
}
