package m1;

import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class r extends AbstractC1294m0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1308u f18464a;

    public r(C1308u c1308u) {
        this.f18464a = c1308u;
    }

    @Override // m1.AbstractC1294m0
    public void onScrolled(RecyclerView recyclerView, int i2, int i7) {
        int computeHorizontalScrollOffset = recyclerView.computeHorizontalScrollOffset();
        int computeVerticalScrollOffset = recyclerView.computeVerticalScrollOffset();
        C1308u c1308u = this.f18464a;
        int computeVerticalScrollRange = c1308u.f18493s.computeVerticalScrollRange();
        int i8 = c1308u.f18492r;
        int i9 = computeVerticalScrollRange - i8;
        int i10 = c1308u.f18475a;
        c1308u.f18494t = i9 > 0 && i8 >= i10;
        int computeHorizontalScrollRange = c1308u.f18493s.computeHorizontalScrollRange();
        int i11 = c1308u.f18491q;
        boolean z6 = computeHorizontalScrollRange - i11 > 0 && i11 >= i10;
        c1308u.f18495u = z6;
        boolean z7 = c1308u.f18494t;
        if (!z7 && !z6) {
            if (c1308u.f18496v != 0) {
                c1308u.d(0);
                return;
            }
            return;
        }
        if (z7) {
            float f3 = i8;
            c1308u.f18486l = (int) ((((f3 / 2.0f) + computeVerticalScrollOffset) * f3) / computeVerticalScrollRange);
            c1308u.f18485k = Math.min(i8, (i8 * i8) / computeVerticalScrollRange);
        }
        if (c1308u.f18495u) {
            float f7 = computeHorizontalScrollOffset;
            float f8 = i11;
            c1308u.f18489o = (int) ((((f8 / 2.0f) + f7) * f8) / computeHorizontalScrollRange);
            c1308u.f18488n = Math.min(i11, (i11 * i11) / computeHorizontalScrollRange);
        }
        int i12 = c1308u.f18496v;
        if (i12 == 0 || i12 == 1) {
            c1308u.d(1);
        }
    }
}
