package m1;

import android.annotation.SuppressLint;
import android.view.View;

/* loaded from: classes.dex */
public abstract class E0 extends AbstractC1272b0 {

    /* renamed from: g, reason: collision with root package name */
    public boolean f18258g = true;

    @SuppressLint({"UnknownNullness"})
    public abstract boolean animateAdd(B0 b02);

    @Override // m1.AbstractC1272b0
    public boolean animateAppearance(B0 b02, C1270a0 c1270a0, C1270a0 c1270a02) {
        int i2;
        int i7;
        return (c1270a0 == null || ((i2 = c1270a0.f18346a) == (i7 = c1270a02.f18346a) && c1270a0.f18347b == c1270a02.f18347b)) ? animateAdd(b02) : animateMove(b02, i2, c1270a0.f18347b, i7, c1270a02.f18347b);
    }

    @SuppressLint({"UnknownNullness"})
    public abstract boolean animateChange(B0 b02, B0 b03, int i2, int i7, int i8, int i9);

    @Override // m1.AbstractC1272b0
    public boolean animateChange(B0 b02, B0 b03, C1270a0 c1270a0, C1270a0 c1270a02) {
        int i2;
        int i7;
        int i8 = c1270a0.f18346a;
        int i9 = c1270a0.f18347b;
        if (b03.l()) {
            int i10 = c1270a0.f18346a;
            i7 = c1270a0.f18347b;
            i2 = i10;
        } else {
            i2 = c1270a02.f18346a;
            i7 = c1270a02.f18347b;
        }
        return animateChange(b02, b03, i8, i9, i2, i7);
    }

    @Override // m1.AbstractC1272b0
    public boolean animateDisappearance(B0 b02, C1270a0 c1270a0, C1270a0 c1270a02) {
        int i2 = c1270a0.f18346a;
        int i7 = c1270a0.f18347b;
        View view = b02.f18217a;
        int left = c1270a02 == null ? view.getLeft() : c1270a02.f18346a;
        int top = c1270a02 == null ? view.getTop() : c1270a02.f18347b;
        if (b02.f() || (i2 == left && i7 == top)) {
            return animateRemove(b02);
        }
        view.layout(left, top, view.getWidth() + left, view.getHeight() + top);
        return animateMove(b02, i2, i7, left, top);
    }

    @SuppressLint({"UnknownNullness"})
    public abstract boolean animateMove(B0 b02, int i2, int i7, int i8, int i9);

    @Override // m1.AbstractC1272b0
    public boolean animatePersistence(B0 b02, C1270a0 c1270a0, C1270a0 c1270a02) {
        int i2 = c1270a0.f18346a;
        int i7 = c1270a02.f18346a;
        if (i2 != i7 || c1270a0.f18347b != c1270a02.f18347b) {
            return animateMove(b02, i2, c1270a0.f18347b, i7, c1270a02.f18347b);
        }
        dispatchMoveFinished(b02);
        return false;
    }

    @SuppressLint({"UnknownNullness"})
    public abstract boolean animateRemove(B0 b02);

    @Override // m1.AbstractC1272b0
    public boolean canReuseUpdatedViewHolder(B0 b02) {
        return !this.f18258g || b02.e();
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchAddFinished(B0 b02) {
        onAddFinished(b02);
        dispatchAnimationFinished(b02);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchAddStarting(B0 b02) {
        onAddStarting(b02);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchChangeFinished(B0 b02, boolean z6) {
        onChangeFinished(b02, z6);
        dispatchAnimationFinished(b02);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchChangeStarting(B0 b02, boolean z6) {
        onChangeStarting(b02, z6);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchMoveFinished(B0 b02) {
        onMoveFinished(b02);
        dispatchAnimationFinished(b02);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchMoveStarting(B0 b02) {
        onMoveStarting(b02);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchRemoveFinished(B0 b02) {
        onRemoveFinished(b02);
        dispatchAnimationFinished(b02);
    }

    @SuppressLint({"UnknownNullness"})
    public final void dispatchRemoveStarting(B0 b02) {
        onRemoveStarting(b02);
    }

    public void setSupportsChangeAnimations(boolean z6) {
        this.f18258g = z6;
    }

    @SuppressLint({"UnknownNullness"})
    public void onAddFinished(B0 b02) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onAddStarting(B0 b02) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onMoveFinished(B0 b02) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onMoveStarting(B0 b02) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onRemoveFinished(B0 b02) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onRemoveStarting(B0 b02) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onChangeFinished(B0 b02, boolean z6) {
    }

    @SuppressLint({"UnknownNullness"})
    public void onChangeStarting(B0 b02, boolean z6) {
    }
}
