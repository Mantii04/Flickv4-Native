package z3;

import android.animation.Animator;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.content.res.Resources;
import android.util.Property;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.material.R;
import g3.AbstractC0951a;
import h0.C0959b;

/* loaded from: classes2.dex */
public final class h extends a {

    /* renamed from: g, reason: collision with root package name */
    public final float f21429g;

    /* renamed from: h, reason: collision with root package name */
    public final float f21430h;

    public h(View view) {
        super(view);
        Resources resources = view.getResources();
        this.f21429g = resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_x_distance);
        this.f21430h = resources.getDimension(R.dimen.m3_back_progress_bottom_container_max_scale_y_distance);
    }

    public final AnimatorSet a() {
        AnimatorSet animatorSet = new AnimatorSet();
        View view = this.f21417b;
        animatorSet.playTogether(ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_X, 1.0f), ObjectAnimator.ofFloat(view, (Property<View, Float>) View.SCALE_Y, 1.0f));
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                animatorSet.playTogether(ObjectAnimator.ofFloat(viewGroup.getChildAt(i2), (Property<View, Float>) View.SCALE_Y, 1.0f));
            }
        }
        animatorSet.setInterpolator(new C0959b());
        return animatorSet;
    }

    public void cancelBackProgress() {
        if (super.onCancelBackProgress() == null) {
            return;
        }
        AnimatorSet a7 = a();
        a7.setDuration(this.f21420e);
        a7.start();
    }

    public void finishBackProgressNotPersistent(androidx.activity.c cVar, Animator.AnimatorListener animatorListener) {
        View view = this.f21417b;
        ObjectAnimator ofFloat = ObjectAnimator.ofFloat(view, (Property<View, Float>) View.TRANSLATION_Y, view.getScaleY() * view.getHeight());
        ofFloat.setInterpolator(new C0959b());
        ofFloat.setDuration(AbstractC0951a.lerp(this.f21418c, this.f21419d, cVar.getProgress()));
        ofFloat.addListener(new g(this));
        if (animatorListener != null) {
            ofFloat.addListener(animatorListener);
        }
        ofFloat.start();
    }

    public void finishBackProgressPersistent(androidx.activity.c cVar, Animator.AnimatorListener animatorListener) {
        AnimatorSet a7 = a();
        a7.setDuration(AbstractC0951a.lerp(this.f21418c, this.f21419d, cVar.getProgress()));
        if (animatorListener != null) {
            a7.addListener(animatorListener);
        }
        a7.start();
    }

    public void startBackProgress(androidx.activity.c cVar) {
        super.onStartBackProgress(cVar);
    }

    public void updateBackProgress(androidx.activity.c cVar) {
        if (super.onUpdateBackProgress(cVar) == null) {
            return;
        }
        updateBackProgress(cVar.getProgress());
    }

    public void updateBackProgress(float f3) {
        float interpolateProgress = interpolateProgress(f3);
        View view = this.f21417b;
        float width = view.getWidth();
        float height = view.getHeight();
        if (width <= 0.0f || height <= 0.0f) {
            return;
        }
        float f7 = this.f21429g / width;
        float f8 = this.f21430h / height;
        float lerp = 1.0f - AbstractC0951a.lerp(0.0f, f7, interpolateProgress);
        float lerp2 = 1.0f - AbstractC0951a.lerp(0.0f, f8, interpolateProgress);
        view.setScaleX(lerp);
        view.setPivotY(height);
        view.setScaleY(lerp2);
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                View childAt = viewGroup.getChildAt(i2);
                childAt.setPivotY(-childAt.getTop());
                childAt.setScaleY(lerp2 != 0.0f ? lerp / lerp2 : 1.0f);
            }
        }
    }
}
