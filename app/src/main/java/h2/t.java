package h2;

import com.android.volley.NetworkResponse;
import com.android.volley.Request;
import com.android.volley.Response;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public class t extends Request {

    /* renamed from: b, reason: collision with root package name */
    public final Object f16518b;

    /* renamed from: e, reason: collision with root package name */
    public Response.Listener f16519e;

    public t(int i2, String str, Response.Listener<String> listener, Response.ErrorListener errorListener) {
        super(i2, str, errorListener);
        this.f16518b = new Object();
        this.f16519e = listener;
    }

    @Override // com.android.volley.Request
    public void cancel() {
        super.cancel();
        synchronized (this.f16518b) {
            this.f16519e = null;
        }
    }

    @Override // com.android.volley.Request
    public Response<String> parseNetworkResponse(NetworkResponse networkResponse) {
        String str;
        try {
            str = new String(networkResponse.data, AbstractC0974i.parseCharset(networkResponse.headers));
        } catch (UnsupportedEncodingException unused) {
            str = new String(networkResponse.data);
        }
        return Response.success(str, AbstractC0974i.parseCacheHeaders(networkResponse));
    }

    @Override // com.android.volley.Request
    public void deliverResponse(String str) {
        Response.Listener listener;
        synchronized (this.f16518b) {
            listener = this.f16519e;
        }
        if (listener != null) {
            listener.onResponse(str);
        }
    }
}
