package androidx.mediarouter.app;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

/* renamed from: androidx.mediarouter.app.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0604h extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ DialogC0605i f7793a;

    public C0604h(DialogC0605i dialogC0605i) {
        this.f7793a = dialogC0605i;
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(Context context, Intent intent) {
        if ("android.intent.action.SCREEN_OFF".equals(intent.getAction())) {
            this.f7793a.dismiss();
        }
    }
}
