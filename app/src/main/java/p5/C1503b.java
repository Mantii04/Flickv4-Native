package p5;

import android.content.Context;
import android.util.LruCache;
import com.android.volley.RequestQueue;
import h2.o;
import h2.v;

/* renamed from: p5.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1503b {

    /* renamed from: a, reason: collision with root package name */
    public final Context f19503a;

    /* renamed from: b, reason: collision with root package name */
    public RequestQueue f19504b;

    public C1503b(Context context) {
        this.f19503a = context;
        RequestQueue requestQueue = getRequestQueue();
        this.f19504b = requestQueue;
        J3.b bVar = new J3.b();
        new LruCache(20);
        new o(requestQueue, bVar);
    }

    public RequestQueue getRequestQueue() {
        if (this.f19504b == null) {
            this.f19504b = v.newRequestQueue(this.f19503a.getApplicationContext());
        }
        return this.f19504b;
    }

    public void start() {
        RequestQueue requestQueue = this.f19504b;
        if (requestQueue != null) {
            requestQueue.start();
        }
    }

    public void stop() {
        RequestQueue requestQueue = this.f19504b;
        if (requestQueue != null) {
            requestQueue.cancelAll((RequestQueue.RequestFilter) new C1502a());
            this.f19504b.stop();
        }
    }
}
