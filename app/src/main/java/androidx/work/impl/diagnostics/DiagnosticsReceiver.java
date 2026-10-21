package androidx.work.impl.diagnostics;

import B1.I;
import B1.t;
import B1.w;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.workers.DiagnosticsWorker;

/* loaded from: classes.dex */
public class DiagnosticsReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final String f8305a = t.tagWithPrefix("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        t tVar = t.get();
        String str = f8305a;
        tVar.debug(str, "Requesting diagnostics");
        try {
            I.getInstance(context).enqueue(w.from(DiagnosticsWorker.class));
        } catch (IllegalStateException e3) {
            t.get().error(str, "WorkManager is not initialized", e3);
        }
    }
}
