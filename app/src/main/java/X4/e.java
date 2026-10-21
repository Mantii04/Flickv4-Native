package X4;

import android.content.Context;
import android.os.AsyncTask;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class e {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4245a = new ArrayList();

    /* renamed from: b, reason: collision with root package name */
    public final U4.c f4246b;

    public e(Context context, U4.c cVar) {
        this.f4246b = cVar;
    }

    public void process(String str, int i2) {
        if (str.endsWith("p=0") && i2 > -1) {
            str = str.replace("p=0", "p=" + i2);
        } else if (i2 > -1) {
            str = str + i2;
        }
        new d(this, str).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
    }
}
