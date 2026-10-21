package y1;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import java.util.ArrayList;

/* renamed from: y1.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1874e extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1877h f20977a;

    public C1874e(C1877h c1877h) {
        this.f20977a = c1877h;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationEnd(Animator animator) {
        C1877h c1877h = this.f20977a;
        ArrayList arrayList = new ArrayList(c1877h.f20986m);
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((AbstractC1872c) arrayList.get(i2)).onAnimationEnd(c1877h);
        }
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public void onAnimationStart(Animator animator) {
        C1877h c1877h = this.f20977a;
        ArrayList arrayList = new ArrayList(c1877h.f20986m);
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((AbstractC1872c) arrayList.get(i2)).onAnimationStart(c1877h);
        }
    }
}
