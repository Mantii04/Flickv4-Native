package o0;

import android.content.BroadcastReceiver;
import android.content.IntentFilter;

/* renamed from: o0.b, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1423b {

    /* renamed from: a, reason: collision with root package name */
    public final IntentFilter f19035a;

    /* renamed from: b, reason: collision with root package name */
    public final BroadcastReceiver f19036b;

    public C1423b(BroadcastReceiver broadcastReceiver, IntentFilter intentFilter) {
        this.f19035a = intentFilter;
        this.f19036b = broadcastReceiver;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder(128);
        sb.append("Receiver{");
        sb.append(this.f19036b);
        sb.append(" filter=");
        sb.append(this.f19035a);
        sb.append("}");
        return sb.toString();
    }
}
