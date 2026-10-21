package h2;

import com.android.volley.Request;
import com.android.volley.Response;
import com.android.volley.VolleyLog;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public abstract class q extends Request {

    /* renamed from: b, reason: collision with root package name */
    public final Object f16514b;

    /* renamed from: e, reason: collision with root package name */
    public Response.Listener f16515e;

    /* renamed from: f, reason: collision with root package name */
    public final String f16516f;

    public q(int i2, String str, String str2, Response.Listener<Object> listener, Response.ErrorListener errorListener) {
        super(i2, str, errorListener);
        this.f16514b = new Object();
        this.f16515e = listener;
        this.f16516f = str2;
    }

    @Override // com.android.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f16514b) {
            this.f16515e = null;
        }
    }

    @Override // com.android.volley.Request
    public void deliverResponse(Object obj) {
        Response.Listener listener;
        synchronized (this.f16514b) {
            listener = this.f16515e;
        }
        if (listener != null) {
            listener.onResponse(obj);
        }
    }

    @Override // com.android.volley.Request
    public byte[] getBody() {
        String str = this.f16516f;
        if (str == null) {
            return null;
        }
        try {
            return str.getBytes("utf-8");
        } catch (UnsupportedEncodingException unused) {
            VolleyLog.wtf("Unsupported Encoding while trying to get the bytes of %s using %s", str, "utf-8");
            return null;
        }
    }

    @Override // com.android.volley.Request
    public String getBodyContentType() {
        return "application/json; charset=utf-8";
    }

    @Override // com.android.volley.Request
    @Deprecated
    public byte[] getPostBody() {
        return getBody();
    }

    @Override // com.android.volley.Request
    @Deprecated
    public String getPostBodyContentType() {
        return getBodyContentType();
    }
}
