package m1;

import java.util.ArrayList;
import java.util.List;

/* renamed from: m1.b0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1272b0 {

    /* renamed from: a, reason: collision with root package name */
    public C1274c0 f18354a = null;

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f18355b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final long f18356c = 120;

    /* renamed from: d, reason: collision with root package name */
    public final long f18357d = 120;

    /* renamed from: e, reason: collision with root package name */
    public final long f18358e = 250;

    /* renamed from: f, reason: collision with root package name */
    public final long f18359f = 250;

    public static int a(B0 b02) {
        int i2 = b02.f18226j;
        int i7 = i2 & 14;
        if (b02.e()) {
            return 4;
        }
        if ((i2 & 4) == 0) {
            int oldPosition = b02.getOldPosition();
            int absoluteAdapterPosition = b02.getAbsoluteAdapterPosition();
            if (oldPosition != -1 && absoluteAdapterPosition != -1 && oldPosition != absoluteAdapterPosition) {
                return i7 | 2048;
            }
        }
        return i7;
    }

    public abstract boolean animateAppearance(B0 b02, C1270a0 c1270a0, C1270a0 c1270a02);

    public abstract boolean animateChange(B0 b02, B0 b03, C1270a0 c1270a0, C1270a0 c1270a02);

    public abstract boolean animateDisappearance(B0 b02, C1270a0 c1270a0, C1270a0 c1270a02);

    public abstract boolean animatePersistence(B0 b02, C1270a0 c1270a0, C1270a0 c1270a02);

    public abstract boolean canReuseUpdatedViewHolder(B0 b02);

    public boolean canReuseUpdatedViewHolder(B0 b02, List<Object> list) {
        return canReuseUpdatedViewHolder(b02);
    }

    public final void dispatchAnimationFinished(B0 b02) {
        onAnimationFinished(b02);
        C1274c0 c1274c0 = this.f18354a;
        if (c1274c0 != null) {
            c1274c0.onAnimationFinished(b02);
        }
    }

    public final void dispatchAnimationsFinished() {
        ArrayList arrayList = this.f18355b;
        if (arrayList.size() <= 0) {
            arrayList.clear();
        } else {
            arrayList.get(0).getClass();
            throw new ClassCastException();
        }
    }

    public abstract void endAnimation(B0 b02);

    public abstract void endAnimations();

    public long getAddDuration() {
        return this.f18356c;
    }

    public long getChangeDuration() {
        return this.f18359f;
    }

    public long getMoveDuration() {
        return this.f18358e;
    }

    public long getRemoveDuration() {
        return this.f18357d;
    }

    public abstract boolean isRunning();

    public C1270a0 obtainHolderInfo() {
        return new C1270a0();
    }

    public C1270a0 recordPostLayoutInformation(x0 x0Var, B0 b02) {
        return obtainHolderInfo().setFrom(b02);
    }

    public C1270a0 recordPreLayoutInformation(x0 x0Var, B0 b02, int i2, List<Object> list) {
        return obtainHolderInfo().setFrom(b02);
    }

    public abstract void runPendingAnimations();

    public void onAnimationFinished(B0 b02) {
    }
}
