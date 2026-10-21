package e4;

import android.os.SystemClock;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import d4.C0810d;
import i4.AbstractC1010a;
import java.util.Collections;
import java.util.Iterator;

/* renamed from: e4.c, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0856c extends h4.c {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f13939a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ g f13940b;

    public C0856c(g gVar, int i2) {
        this.f13940b = gVar;
        this.f13939a = i2;
    }

    @Override // h4.c, h4.InterfaceC0986a
    public void onAnimationEnd(h4.b bVar) {
        g gVar = this.f13940b;
        int i2 = gVar.f13953r - 1;
        gVar.f13953r = i2;
        if (i2 == 0) {
            Collections.sort(gVar.f13952q);
            int[] iArr = new int[gVar.f13952q.size()];
            for (int size = gVar.f13952q.size() - 1; size >= 0; size--) {
                iArr[size] = ((f) gVar.f13952q.get(size)).f13943b;
            }
            ((C0810d) gVar.f13950n).onDismiss(gVar.f13949m, iArr);
            gVar.f13958w = -1;
            Iterator it = gVar.f13952q.iterator();
            while (it.hasNext()) {
                f fVar = (f) it.next();
                AbstractC1010a.setAlpha(fVar.f13944e, 1.0f);
                View view = fVar.f13944e;
                AbstractC1010a.setTranslationX(view, 0.0f);
                ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
                layoutParams.height = this.f13939a;
                view.setLayoutParams(layoutParams);
            }
            long uptimeMillis = SystemClock.uptimeMillis();
            gVar.f13949m.dispatchTouchEvent(MotionEvent.obtain(uptimeMillis, uptimeMillis, 3, 0.0f, 0.0f, 0));
            gVar.f13952q.clear();
        }
    }
}
