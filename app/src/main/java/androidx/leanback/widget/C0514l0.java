package androidx.leanback.widget;

import android.view.View;

/* renamed from: androidx.leanback.widget.l0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0514l0 extends M0 {

    /* renamed from: n, reason: collision with root package name */
    public final HorizontalGridView f6845n;

    /* renamed from: o, reason: collision with root package name */
    public C0510j0 f6846o;

    /* renamed from: p, reason: collision with root package name */
    public final int f6847p;

    /* renamed from: q, reason: collision with root package name */
    public final int f6848q;

    /* renamed from: r, reason: collision with root package name */
    public final int f6849r;

    /* renamed from: s, reason: collision with root package name */
    public final int f6850s;

    public C0514l0(View view, HorizontalGridView horizontalGridView, AbstractC0516m0 abstractC0516m0) {
        super(view);
        new Q();
        this.f6845n = horizontalGridView;
        this.f6847p = horizontalGridView.getPaddingTop();
        this.f6848q = horizontalGridView.getPaddingBottom();
        this.f6849r = horizontalGridView.getPaddingLeft();
        this.f6850s = horizontalGridView.getPaddingRight();
    }

    public final C0498d0 getBridgeAdapter() {
        return this.f6846o;
    }

    public final HorizontalGridView getGridView() {
        return this.f6845n;
    }
}
