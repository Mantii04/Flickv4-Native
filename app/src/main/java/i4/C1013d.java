package i4;

import android.view.View;
import h4.InterfaceC0986a;
import h4.v;
import h4.w;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* renamed from: i4.d, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1013d implements InterfaceC0986a, v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C1016g f16718a;

    public C1013d(C1016g c1016g) {
        this.f16718a = c1016g;
    }

    @Override // h4.InterfaceC0986a
    public void onAnimationCancel(h4.b bVar) {
        InterfaceC0986a interfaceC0986a = this.f16718a.f16727e;
        if (interfaceC0986a != null) {
            interfaceC0986a.onAnimationCancel(bVar);
        }
    }

    @Override // h4.InterfaceC0986a
    public void onAnimationEnd(h4.b bVar) {
        C1016g c1016g = this.f16718a;
        InterfaceC0986a interfaceC0986a = c1016g.f16727e;
        if (interfaceC0986a != null) {
            interfaceC0986a.onAnimationEnd(bVar);
        }
        c1016g.f16731i.remove(bVar);
        if (c1016g.f16731i.isEmpty()) {
            c1016g.f16727e = null;
        }
    }

    @Override // h4.InterfaceC0986a
    public void onAnimationRepeat(h4.b bVar) {
        InterfaceC0986a interfaceC0986a = this.f16718a.f16727e;
        if (interfaceC0986a != null) {
            interfaceC0986a.onAnimationRepeat(bVar);
        }
    }

    @Override // h4.InterfaceC0986a
    public void onAnimationStart(h4.b bVar) {
        InterfaceC0986a interfaceC0986a = this.f16718a.f16727e;
        if (interfaceC0986a != null) {
            interfaceC0986a.onAnimationStart(bVar);
        }
    }

    @Override // h4.v
    public void onAnimationUpdate(w wVar) {
        View view;
        float animatedFraction = wVar.getAnimatedFraction();
        C1016g c1016g = this.f16718a;
        C1015f c1015f = (C1015f) c1016g.f16731i.get(wVar);
        int i2 = c1015f.f16722a & 511;
        WeakReference weakReference = c1016g.f16724b;
        if (i2 != 0 && (view = (View) weakReference.get()) != null) {
            view.invalidate();
        }
        ArrayList arrayList = c1015f.f16723b;
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            C1014e c1014e = (C1014e) arrayList.get(i7);
            float f3 = (c1014e.f16721c * animatedFraction) + c1014e.f16720b;
            View view2 = (View) weakReference.get();
            if (view2 != null) {
                int i8 = c1014e.f16719a;
                if (i8 == 1) {
                    view2.setTranslationX(f3);
                } else if (i8 == 2) {
                    view2.setTranslationY(f3);
                } else if (i8 == 4) {
                    view2.setScaleX(f3);
                } else if (i8 == 8) {
                    view2.setScaleY(f3);
                } else if (i8 == 16) {
                    view2.setRotation(f3);
                } else if (i8 == 32) {
                    view2.setRotationX(f3);
                } else if (i8 == 64) {
                    view2.setRotationY(f3);
                } else if (i8 == 128) {
                    view2.setX(f3);
                } else if (i8 == 256) {
                    view2.setY(f3);
                } else if (i8 == 512) {
                    view2.setAlpha(f3);
                }
            }
        }
        View view3 = (View) weakReference.get();
        if (view3 != null) {
            view3.invalidate();
        }
    }
}
