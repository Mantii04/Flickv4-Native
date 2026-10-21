package h2;

import android.content.Context;
import com.android.volley.RequestQueue;

/* loaded from: classes.dex */
public abstract class v {
    public static RequestQueue newRequestQueue(Context context, AbstractC0966a abstractC0966a) {
        RequestQueue requestQueue = new RequestQueue(new C0973h(new u(context.getApplicationContext())), abstractC0966a == null ? new C0967b(new m()) : new C0967b(abstractC0966a));
        requestQueue.start();
        return requestQueue;
    }

    public static RequestQueue newRequestQueue(Context context) {
        return newRequestQueue(context, null);
    }
}
