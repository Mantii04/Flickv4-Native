package androidx.fragment.app;

/* loaded from: classes.dex */
public final class r extends AbstractC0479q {

    /* renamed from: c, reason: collision with root package name */
    public final Object f6298c;

    /* renamed from: d, reason: collision with root package name */
    public final boolean f6299d;

    /* renamed from: e, reason: collision with root package name */
    public final Object f6300e;

    public r(L0 l02, I.f fVar, boolean z6, boolean z7) {
        super(l02, fVar);
        if (l02.getFinalState() == SpecialEffectsController$Operation$State.f6161e) {
            this.f6298c = z6 ? l02.getFragment().getReenterTransition() : l02.getFragment().getEnterTransition();
            this.f6299d = z6 ? l02.getFragment().getAllowReturnTransitionOverlap() : l02.getFragment().getAllowEnterTransitionOverlap();
        } else {
            this.f6298c = z6 ? l02.getFragment().getReturnTransition() : l02.getFragment().getExitTransition();
            this.f6299d = true;
        }
        if (!z7) {
            this.f6300e = null;
        } else if (z6) {
            this.f6300e = l02.getFragment().getSharedElementReturnTransition();
        } else {
            this.f6300e = l02.getFragment().getSharedElementEnterTransition();
        }
    }

    public final E0 c(Object obj) {
        if (obj == null) {
            return null;
        }
        C0 c02 = w0.f6349a;
        if (c02 != null && c02.canHandle(obj)) {
            return c02;
        }
        E0 e02 = w0.f6350b;
        if (e02 != null && e02.canHandle(obj)) {
            return e02;
        }
        throw new IllegalArgumentException("Transition " + obj + " for fragment " + this.f6283a.getFragment() + " is not a valid framework Transition or AndroidX Transition");
    }

    public Object getSharedElementTransition() {
        return this.f6300e;
    }

    public boolean hasSharedElementTransition() {
        return this.f6300e != null;
    }
}
