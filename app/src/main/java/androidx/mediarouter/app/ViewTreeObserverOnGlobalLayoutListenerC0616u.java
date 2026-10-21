package androidx.mediarouter.app;

import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.animation.AlphaAnimation;
import android.view.animation.AnimationSet;
import android.view.animation.TranslateAnimation;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

/* renamed from: androidx.mediarouter.app.u, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC0616u implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ HashMap f7907b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ HashMap f7908e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ D f7909f;

    public ViewTreeObserverOnGlobalLayoutListenerC0616u(D d7, HashMap hashMap, HashMap hashMap2) {
        this.f7909f = d7;
        this.f7907b = hashMap;
        this.f7908e = hashMap2;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        HashMap hashMap;
        HashMap hashMap2;
        q0 animationEndListener;
        f1.U u6;
        D d7 = this.f7909f;
        d7.f7624P.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        Set set = d7.f7627S;
        if (set == null || d7.f7628T == null) {
            return;
        }
        int size = set.size() - d7.f7628T.size();
        AnimationAnimationListenerC0617v animationAnimationListenerC0617v = new AnimationAnimationListenerC0617v(d7);
        int firstVisiblePosition = d7.f7624P.getFirstVisiblePosition();
        int i2 = 0;
        boolean z6 = false;
        while (true) {
            int childCount = d7.f7624P.getChildCount();
            hashMap = this.f7907b;
            hashMap2 = this.f7908e;
            if (i2 >= childCount) {
                break;
            }
            View childAt = d7.f7624P.getChildAt(i2);
            f1.U u7 = (f1.U) d7.f7625Q.getItem(firstVisiblePosition + i2);
            Rect rect = (Rect) hashMap.get(u7);
            int top = childAt.getTop();
            int i7 = rect != null ? rect.top : (d7.f7634Z * size) + top;
            AnimationSet animationSet = new AnimationSet(true);
            Set set2 = d7.f7627S;
            if (set2 == null || !set2.contains(u7)) {
                u6 = u7;
            } else {
                AlphaAnimation alphaAnimation = new AlphaAnimation(0.0f, 0.0f);
                u6 = u7;
                alphaAnimation.setDuration(d7.f7659t0);
                animationSet.addAnimation(alphaAnimation);
                i7 = top;
            }
            TranslateAnimation translateAnimation = new TranslateAnimation(0.0f, 0.0f, i7 - top, 0.0f);
            translateAnimation.setDuration(d7.f7657s0);
            animationSet.addAnimation(translateAnimation);
            animationSet.setFillAfter(true);
            animationSet.setFillEnabled(true);
            animationSet.setInterpolator(d7.f7663v0);
            if (!z6) {
                animationSet.setAnimationListener(animationAnimationListenerC0617v);
                z6 = true;
            }
            childAt.clearAnimation();
            childAt.startAnimation(animationSet);
            f1.U u8 = u6;
            hashMap.remove(u8);
            hashMap2.remove(u8);
            i2++;
        }
        for (Map.Entry entry : hashMap2.entrySet()) {
            f1.U u9 = (f1.U) entry.getKey();
            BitmapDrawable bitmapDrawable = (BitmapDrawable) entry.getValue();
            Rect rect2 = (Rect) hashMap.get(u9);
            if (d7.f7628T.contains(u9)) {
                animationEndListener = new q0(bitmapDrawable, rect2).setAlphaAnimation(1.0f, 0.0f).setDuration(d7.f7661u0).setInterpolator(d7.f7663v0);
            } else {
                animationEndListener = new q0(bitmapDrawable, rect2).setTranslateYAnimation(d7.f7634Z * size).setDuration(d7.f7657s0).setInterpolator(d7.f7663v0).setAnimationEndListener(new C0607k(d7, u9));
                d7.f7629U.add(u9);
            }
            d7.f7624P.addOverlayObject(animationEndListener);
        }
    }
}
