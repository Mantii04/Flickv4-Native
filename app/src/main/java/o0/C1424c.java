package o0;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.HashMap;

/* renamed from: o0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1424c {

    /* renamed from: d, reason: collision with root package name */
    public static final Object f19037d = new Object();

    /* renamed from: e, reason: collision with root package name */
    public static C1424c f19038e;

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f19039a = new HashMap();

    /* renamed from: b, reason: collision with root package name */
    public final HashMap f19040b = new HashMap();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f19041c = new ArrayList();

    public C1424c(Context context) {
        new HandlerC1422a(this, context.getMainLooper());
    }

    public static C1424c getInstance(Context context) {
        C1424c c1424c;
        synchronized (f19037d) {
            try {
                if (f19038e == null) {
                    f19038e = new C1424c(context.getApplicationContext());
                }
                c1424c = f19038e;
            } catch (Throwable th) {
                throw th;
            }
        }
        return c1424c;
    }

    public void registerReceiver(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        synchronized (this.f19039a) {
            try {
                C1423b c1423b = new C1423b(broadcastReceiver, intentFilter);
                ArrayList arrayList = (ArrayList) this.f19039a.get(broadcastReceiver);
                if (arrayList == null) {
                    arrayList = new ArrayList(1);
                    this.f19039a.put(broadcastReceiver, arrayList);
                }
                arrayList.add(c1423b);
                for (int i2 = 0; i2 < intentFilter.countActions(); i2++) {
                    String action = intentFilter.getAction(i2);
                    ArrayList arrayList2 = (ArrayList) this.f19040b.get(action);
                    if (arrayList2 == null) {
                        arrayList2 = new ArrayList(1);
                        this.f19040b.put(action, arrayList2);
                    }
                    arrayList2.add(c1423b);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
