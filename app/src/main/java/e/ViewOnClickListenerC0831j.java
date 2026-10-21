package e;

import android.os.Message;
import android.view.View;

/* renamed from: e.j, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewOnClickListenerC0831j implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ C0838q f13772b;

    public ViewOnClickListenerC0831j(C0838q c0838q) {
        this.f13772b = c0838q;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        Message message;
        Message message2;
        Message message3;
        C0838q c0838q = this.f13772b;
        Message obtain = (view != c0838q.f13839k || (message3 = c0838q.f13841m) == null) ? (view != c0838q.f13843o || (message2 = c0838q.f13845q) == null) ? (view != c0838q.f13847s || (message = c0838q.f13849u) == null) ? null : Message.obtain(message) : Message.obtain(message2) : Message.obtain(message3);
        if (obtain != null) {
            obtain.sendToTarget();
        }
        c0838q.f13827L.obtainMessage(1, c0838q.f13830b).sendToTarget();
    }
}
