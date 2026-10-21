package L1;

import android.content.Context;
import android.os.PowerManager;
import java.util.LinkedHashMap;
import java.util.Map;

/* loaded from: classes.dex */
public abstract class x {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1897a;

    static {
        String tagWithPrefix = B1.t.tagWithPrefix("WakeLocks");
        kotlin.jvm.internal.j.checkNotNullExpressionValue(tagWithPrefix, "tagWithPrefix(\"WakeLocks\")");
        f1897a = tagWithPrefix;
    }

    public static final void checkWakeLocks() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        y yVar = y.f1898a;
        synchronized (yVar) {
            linkedHashMap.putAll(yVar.getWakeLocks());
        }
        for (Map.Entry entry : linkedHashMap.entrySet()) {
            PowerManager.WakeLock wakeLock = (PowerManager.WakeLock) entry.getKey();
            String str = (String) entry.getValue();
            if (wakeLock != null && wakeLock.isHeld()) {
                B1.t.get().warning(f1897a, "WakeLock held for " + str);
            }
        }
    }

    public static final PowerManager.WakeLock newWakeLock(Context context, String tag) {
        kotlin.jvm.internal.j.checkNotNullParameter(context, "context");
        kotlin.jvm.internal.j.checkNotNullParameter(tag, "tag");
        Object systemService = context.getApplicationContext().getSystemService("power");
        kotlin.jvm.internal.j.checkNotNull(systemService, "null cannot be cast to non-null type android.os.PowerManager");
        String k7 = A.i.k("WorkManager: ", tag);
        PowerManager.WakeLock wakeLock = ((PowerManager) systemService).newWakeLock(1, k7);
        y yVar = y.f1898a;
        synchronized (yVar) {
            yVar.getWakeLocks().put(wakeLock, k7);
        }
        kotlin.jvm.internal.j.checkNotNullExpressionValue(wakeLock, "wakeLock");
        return wakeLock;
    }
}
