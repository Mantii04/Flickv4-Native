package X4;

import android.content.Context;
import android.os.AsyncTask;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class g {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4249a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final U4.c f4250b;

    public g(Context context, U4.c cVar) {
        this.f4250b = cVar;
    }

    public void process(String str) {
        new f(this, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
