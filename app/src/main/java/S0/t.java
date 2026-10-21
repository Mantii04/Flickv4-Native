package S0;

import android.util.SparseArray;
import v0.F;
import v0.g0;
import v0.r0;

/* loaded from: classes.dex */
public final class t implements F {

    /* renamed from: b, reason: collision with root package name */
    public final F f3278b;

    /* renamed from: e, reason: collision with root package name */
    public final q f3279e;

    /* renamed from: f, reason: collision with root package name */
    public final SparseArray f3280f = new SparseArray();

    /* renamed from: j, reason: collision with root package name */
    public boolean f3281j;

    public t(F f3, q qVar) {
        this.f3278b = f3;
        this.f3279e = qVar;
    }

    @Override // v0.F
    public void endTracks() {
        this.f3278b.endTracks();
        if (!this.f3281j) {
            return;
        }
        int i2 = 0;
        while (true) {
            SparseArray sparseArray = this.f3280f;
            if (i2 >= sparseArray.size()) {
                return;
            }
            ((u) sparseArray.valueAt(i2)).shouldSuppressParsingErrors(true);
            i2++;
        }
    }

    @Override // v0.F
    public void seekMap(g0 g0Var) {
        this.f3278b.seekMap(g0Var);
    }

    @Override // v0.F
    public r0 track(int i2, int i7) {
        F f3 = this.f3278b;
        if (i7 != 3) {
            this.f3281j = true;
            return f3.track(i2, i7);
        }
        SparseArray sparseArray = this.f3280f;
        u uVar = (u) sparseArray.get(i2);
        if (uVar != null) {
            return uVar;
        }
        u uVar2 = new u(f3.track(i2, i7), this.f3279e);
        sparseArray.put(i2, uVar2);
        return uVar2;
    }
}
