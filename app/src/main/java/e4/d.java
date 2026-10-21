package e4;

import android.view.View;
import android.view.ViewGroup;
import h4.v;
import h4.w;

/* loaded from: classes2.dex */
public final class d implements v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ ViewGroup.LayoutParams f13941a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ View f13942b;

    public d(View view, ViewGroup.LayoutParams layoutParams) {
        this.f13941a = layoutParams;
        this.f13942b = view;
    }

    @Override // h4.v
    public void onAnimationUpdate(w wVar) {
        int intValue = ((Integer) wVar.getAnimatedValue()).intValue();
        ViewGroup.LayoutParams layoutParams = this.f13941a;
        layoutParams.height = intValue;
        this.f13942b.setLayoutParams(layoutParams);
    }
}
