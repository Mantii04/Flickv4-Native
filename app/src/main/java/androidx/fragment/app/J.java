package androidx.fragment.app;

import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.Transformation;

/* loaded from: classes.dex */
public final class J extends AnimationSet implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final ViewGroup f6127b;

    /* renamed from: e, reason: collision with root package name */
    public final View f6128e;

    /* renamed from: f, reason: collision with root package name */
    public boolean f6129f;

    /* renamed from: j, reason: collision with root package name */
    public boolean f6130j;

    /* renamed from: m, reason: collision with root package name */
    public boolean f6131m;

    public J(Animation animation, ViewGroup viewGroup, View view) {
        super(false);
        this.f6131m = true;
        this.f6127b = viewGroup;
        this.f6128e = view;
        addAnimation(animation);
        viewGroup.post(this);
    }

    @Override // android.view.animation.AnimationSet, android.view.animation.Animation
    public boolean getTransformation(long j7, Transformation transformation) {
        this.f6131m = true;
        if (this.f6129f) {
            return !this.f6130j;
        }
        if (!super.getTransformation(j7, transformation)) {
            this.f6129f = true;
            M.O.add(this.f6127b, this);
        }
        return true;
    }

    @Override // java.lang.Runnable
    public void run() {
        boolean z6 = this.f6129f;
        ViewGroup viewGroup = this.f6127b;
        if (z6 || !this.f6131m) {
            viewGroup.endViewTransition(this.f6128e);
            this.f6130j = true;
        } else {
            this.f6131m = false;
            viewGroup.post(this);
        }
    }

    @Override // android.view.animation.Animation
    public boolean getTransformation(long j7, Transformation transformation, float f3) {
        this.f6131m = true;
        if (this.f6129f) {
            return !this.f6130j;
        }
        if (!super.getTransformation(j7, transformation, f3)) {
            this.f6129f = true;
            M.O.add(this.f6127b, this);
        }
        return true;
    }
}
