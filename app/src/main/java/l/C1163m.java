package l;

import k.AbstractC1071c;
import k.InterfaceC1064I;

/* renamed from: l.m, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1163m extends AbstractC1071c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1186u f17948a;

    public C1163m(C1186u c1186u) {
        this.f17948a = c1186u;
    }

    @Override // k.AbstractC1071c
    public InterfaceC1064I getPopup() {
        C1160l c1160l = this.f17948a.f18008D;
        if (c1160l != null) {
            return c1160l.getPopup();
        }
        return null;
    }
}
