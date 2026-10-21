package T1;

import com.airbnb.lottie.LottieAnimationView;

/* renamed from: T1.f, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0327f implements I {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ LottieAnimationView f3597a;

    public C0327f(LottieAnimationView lottieAnimationView) {
        this.f3597a = lottieAnimationView;
    }

    @Override // T1.I
    public void onResult(Throwable th) {
        LottieAnimationView lottieAnimationView = this.f3597a;
        int i2 = lottieAnimationView.f9013p;
        if (i2 != 0) {
            lottieAnimationView.setImageResource(i2);
        }
        I i7 = lottieAnimationView.f9012n;
        if (i7 == null) {
            i7 = LottieAnimationView.f9005E;
        }
        i7.onResult(th);
    }
}
