package z3;

import M.AbstractC0181p0;
import M.AbstractC0185s;
import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.animation.ValueAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.R;
import g3.AbstractC0951a;
import h0.C0959b;

/* loaded from: classes2.dex */
public final class j extends a {

    /* renamed from: g, reason: collision with root package name */
    public final float f21434g;

    /* renamed from: h, reason: collision with root package name */
    public final float f21435h;

    /* renamed from: i, reason: collision with root package name */
    public final float f21436i;

    public j(View view) {
        super(view);
        Resources resources = view.getResources();
        this.f21434g = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_shrink);
        this.f21435h = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_x_distance_grow);
        this.f21436i = resources.getDimension(R.dimen.m3_back_progress_side_container_max_scale_y_distance);
    }

    public void cancelBackProgress() {
        if (super.onCancelBackProgress() == null) {
            return;
        }
        AnimatorSet animatorSet = new AnimatorSet();
        View view = this.f21417b;
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, 1.0f));
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i2), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setDuration(this.f21420e);
        animatorSet.start();
    }

    public void finishBackProgress(androidx.activity.c cVar, int i2, Animator.AnimatorListener animatorListener, ValueAnimator.AnimatorUpdateListener animatorUpdateListener) {
        int i7;
        boolean z6 = cVar.getSwipeEdge() == 0;
        View view = this.f21417b;
        boolean z7 = (AbstractC0185s.getAbsoluteGravity(i2, AbstractC0181p0.getLayoutDirection(view)) & 3) == 3;
        float scaleX = view.getScaleX() * view.getWidth();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        if (layoutParams instanceof ViewGroup.MarginLayoutParams) {
            ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
            i7 = z7 ? marginLayoutParams.leftMargin : marginLayoutParams.rightMargin;
        } else {
            i7 = 0;
        }
        float f3 = scaleX + i7;
        Property property = View.TRANSLATION_X;
        if (z7) {
            f3 = -f3;
        }
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) property, f3);
        if (animatorUpdateListener != null) {
            ofFloat.addUpdateListener(animatorUpdateListener);
        }
        ofFloat.setInterpolator(new C0959b());
        ofFloat.setDuration(AbstractC0951a.lerp(this.f21418c, this.f21419d, cVar.getProgress()));
        ofFloat.addListener(new i(this, z6, i2));
        if (animatorListener != null) {
            ofFloat.addListener(animatorListener);
        }
        ofFloat.start();
    }

    public void startBackProgress(androidx.activity.c cVar) {
        super.onStartBackProgress(cVar);
    }

    public void updateBackProgress(androidx.activity.c cVar, int i2) {
        if (super.onUpdateBackProgress(cVar) == null) {
            return;
        }
        updateBackProgress(cVar.getProgress(), cVar.getSwipeEdge() == 0, i2);
    }

    public void updateBackProgress(float f3, boolean z6, int i2) {
        float interpolateProgress = interpolateProgress(f3);
        View view = this.f21417b;
        boolean z7 = (AbstractC0185s.getAbsoluteGravity(i2, AbstractC0181p0.getLayoutDirection(view)) & 3) == 3;
        boolean z8 = z6 == z7;
        int width = view.getWidth();
        int height = view.getHeight();
        float f7 = width;
        if (f7 > 0.0f) {
            float f8 = height;
            if (f8 <= 0.0f) {
                return;
            }
            float f9 = this.f21434g / f7;
            float f10 = this.f21435h / f7;
            float f11 = this.f21436i / f8;
            if (z7) {
                f7 = 0.0f;
            }
            view.setPivotX(f7);
            if (!z8) {
                f10 = -f9;
            }
            float lerp = AbstractC0951a.lerp(0.0f, f10, interpolateProgress);
            float f12 = lerp + 1.0f;
            view.setScaleX(f12);
            float lerp2 = 1.0f - AbstractC0951a.lerp(0.0f, f11, interpolateProgress);
            view.setScaleY(lerp2);
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                for (int i7 = 0; i7 < viewGroup.getChildCount(); i7++) {
                    View childAt = viewGroup.getChildAt(i7);
                    childAt.setPivotX(z7 ? childAt.getWidth() + (width - childAt.getRight()) : -childAt.getLeft());
                    childAt.setPivotY(-childAt.getTop());
                    float f13 = z8 ? 1.0f - lerp : 1.0f;
                    float f14 = lerp2 != 0.0f ? (f12 / lerp2) * f13 : 1.0f;
                    childAt.setScaleX(f13);
                    childAt.setScaleY(f14);
                }
            }
        }
    }
}
