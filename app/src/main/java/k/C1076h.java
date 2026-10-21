package k;

import android.os.Handler;
import android.os.SystemClock;
import android.view.MenuItem;
import java.util.ArrayList;
import l.InterfaceC1165m1;

/* renamed from: k.h, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1076h implements InterfaceC1165m1 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewOnKeyListenerC1078j f17101b;

    public C1076h(ViewOnKeyListenerC1078j viewOnKeyListenerC1078j) {
        this.f17101b = viewOnKeyListenerC1078j;
    }

    @Override // l.InterfaceC1165m1
    public void onItemHoverEnter(C1084p c1084p, MenuItem menuItem) {
        ViewOnKeyListenerC1078j viewOnKeyListenerC1078j = this.f17101b;
        Handler handler = viewOnKeyListenerC1078j.f17121p;
        handler.removeCallbacksAndMessages(null);
        ArrayList arrayList = viewOnKeyListenerC1078j.f17123r;
        int size = arrayList.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                i2 = -1;
                break;
            } else if (c1084p == ((C1077i) arrayList.get(i2)).f17103b) {
                break;
            } else {
                i2++;
            }
        }
        if (i2 == -1) {
            return;
        }
        int i7 = i2 + 1;
        handler.postAtTime(new RunnableC1075g(this, i7 < arrayList.size() ? (C1077i) arrayList.get(i7) : null, menuItem, c1084p), c1084p, SystemClock.uptimeMillis() + 200);
    }

    @Override // l.InterfaceC1165m1
    public void onItemHoverExit(C1084p c1084p, MenuItem menuItem) {
        this.f17101b.f17121p.removeCallbacksAndMessages(c1084p);
    }
}
