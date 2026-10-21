package androidx.leanback.widget;

import android.view.KeyEvent;

/* renamed from: androidx.leanback.widget.h0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0506h0 implements InterfaceC0525r {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0514l0 f6797a;

    public C0506h0(C0514l0 c0514l0) {
        this.f6797a = c0514l0;
    }

    public boolean onUnhandledKey(KeyEvent keyEvent) {
        C0514l0 c0514l0 = this.f6797a;
        return c0514l0.getOnKeyListener() != null && c0514l0.getOnKeyListener().onKey(c0514l0.f6460a, keyEvent.getKeyCode(), keyEvent);
    }
}
