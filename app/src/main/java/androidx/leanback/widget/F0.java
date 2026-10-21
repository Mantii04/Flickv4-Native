package androidx.leanback.widget;

import android.graphics.Outline;
import android.view.View;
import android.view.ViewOutlineProvider;

/* loaded from: classes.dex */
public final class F0 extends ViewOutlineProvider {

    /* renamed from: a, reason: collision with root package name */
    public int f6493a;

    @Override // android.view.ViewOutlineProvider
    public void getOutline(View view, Outline outline) {
        outline.setRoundRect(0, 0, view.getWidth(), view.getHeight(), this.f6493a);
        outline.setAlpha(1.0f);
    }
}
