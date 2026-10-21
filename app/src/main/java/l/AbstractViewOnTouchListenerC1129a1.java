package l;

import android.view.View;
import android.view.ViewConfiguration;
import k.InterfaceC1064I;

/* renamed from: l.a1, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractViewOnTouchListenerC1129a1 implements View.OnTouchListener, View.OnAttachStateChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final float f17832b;

    /* renamed from: e, reason: collision with root package name */
    public final int f17833e;

    /* renamed from: f, reason: collision with root package name */
    public final int f17834f;

    /* renamed from: j, reason: collision with root package name */
    public final View f17835j;

    /* renamed from: m, reason: collision with root package name */
    public Y0 f17836m;

    /* renamed from: n, reason: collision with root package name */
    public Z0 f17837n;

    /* renamed from: p, reason: collision with root package name */
    public boolean f17838p;

    /* renamed from: q, reason: collision with root package name */
    public int f17839q;

    /* renamed from: r, reason: collision with root package name */
    public final int[] f17840r = new int[2];

    public AbstractViewOnTouchListenerC1129a1(View view) {
        this.f17835j = view;
        view.setLongClickable(true);
        view.addOnAttachStateChangeListener(this);
        this.f17832b = ViewConfiguration.get(view.getContext()).getScaledTouchSlop();
        int tapTimeout = ViewConfiguration.getTapTimeout();
        this.f17833e = tapTimeout;
        this.f17834f = (ViewConfiguration.getLongPressTimeout() + tapTimeout) / 2;
    }

    public final void a() {
        Z0 z02 = this.f17837n;
        View view = this.f17835j;
        if (z02 != null) {
            view.removeCallbacks(z02);
        }
        Y0 y02 = this.f17836m;
        if (y02 != null) {
            view.removeCallbacks(y02);
        }
    }

    public abstract InterfaceC1064I getPopup();

    public abstract boolean onForwardingStarted();

    public boolean onForwardingStopped() {
        InterfaceC1064I popup = getPopup();
        if (popup == null || !popup.isShowing()) {
            return true;
        }
        popup.dismiss();
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x005b, code lost:
    
        if (r14 != false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x007d, code lost:
    
        if (r4 != 3) goto L58;
     */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0100  */
    @Override // android.view.View.OnTouchListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onTouch(android.view.View r13, android.view.MotionEvent r14) {
        /*
            Method dump skipped, instructions count: 284
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: l.AbstractViewOnTouchListenerC1129a1.onTouch(android.view.View, android.view.MotionEvent):boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        this.f17838p = false;
        this.f17839q = -1;
        Y0 y02 = this.f17836m;
        if (y02 != null) {
            this.f17835j.removeCallbacks(y02);
        }
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }
}
