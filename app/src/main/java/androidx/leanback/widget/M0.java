package androidx.leanback.widget;

import android.view.View;
import i0.C1002a;

/* loaded from: classes.dex */
public abstract class M0 extends A0 {

    /* renamed from: b, reason: collision with root package name */
    public L0 f6596b;

    /* renamed from: c, reason: collision with root package name */
    public J0 f6597c;

    /* renamed from: d, reason: collision with root package name */
    public H0 f6598d;

    /* renamed from: e, reason: collision with root package name */
    public Object f6599e;

    /* renamed from: f, reason: collision with root package name */
    public int f6600f;

    /* renamed from: g, reason: collision with root package name */
    public boolean f6601g;

    /* renamed from: h, reason: collision with root package name */
    public boolean f6602h;

    /* renamed from: i, reason: collision with root package name */
    public boolean f6603i;

    /* renamed from: j, reason: collision with root package name */
    public float f6604j;

    /* renamed from: k, reason: collision with root package name */
    public final C1002a f6605k;

    /* renamed from: l, reason: collision with root package name */
    public InterfaceC0533v f6606l;

    /* renamed from: m, reason: collision with root package name */
    public InterfaceC0531u f6607m;

    public M0(View view) {
        super(view);
        this.f6600f = 0;
        this.f6604j = 0.0f;
        this.f6605k = C1002a.createDefault(view.getContext());
    }

    public final J0 getHeaderViewHolder() {
        return this.f6597c;
    }

    public final InterfaceC0531u getOnItemViewClickedListener() {
        return this.f6607m;
    }

    public final InterfaceC0533v getOnItemViewSelectedListener() {
        return this.f6606l;
    }

    public View.OnKeyListener getOnKeyListener() {
        return null;
    }

    public final H0 getRow() {
        return this.f6598d;
    }

    public final Object getRowObject() {
        return this.f6599e;
    }

    public final boolean isExpanded() {
        return this.f6602h;
    }

    public final boolean isSelected() {
        return this.f6601g;
    }

    public final void setActivated(boolean z6) {
        this.f6600f = z6 ? 1 : 2;
    }

    public final void setOnItemViewClickedListener(InterfaceC0531u interfaceC0531u) {
        this.f6607m = interfaceC0531u;
    }

    public final void setOnItemViewSelectedListener(InterfaceC0533v interfaceC0533v) {
        this.f6606l = interfaceC0533v;
    }

    public final void syncActivatedStatus(View view) {
        int i2 = this.f6600f;
        if (i2 == 1) {
            view.setActivated(true);
        } else if (i2 == 2) {
            view.setActivated(false);
        }
    }
}
