package androidx.fragment.app;

/* renamed from: androidx.fragment.app.i, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class RunnableC0466i implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AnimationAnimationListenerC0468j f6208b;

    public RunnableC0466i(AnimationAnimationListenerC0468j animationAnimationListenerC0468j) {
        this.f6208b = animationAnimationListenerC0468j;
    }

    @Override // java.lang.Runnable
    public void run() {
        AnimationAnimationListenerC0468j animationAnimationListenerC0468j = this.f6208b;
        animationAnimationListenerC0468j.f6249b.endViewTransition(animationAnimationListenerC0468j.f6250c);
        animationAnimationListenerC0468j.f6251d.a();
    }
}
