package androidx.fragment.app;

import android.animation.Animator;
import android.view.animation.Animation;

/* loaded from: classes.dex */
public final class I {

    /* renamed from: a, reason: collision with root package name */
    public final Animation f6123a;

    /* renamed from: b, reason: collision with root package name */
    public final Animator f6124b;

    public I(Animation animation) {
        this.f6123a = animation;
        this.f6124b = null;
    }

    public I(Animator animator) {
        this.f6123a = null;
        this.f6124b = animator;
    }
}
