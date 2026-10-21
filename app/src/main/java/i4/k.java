package i4;

import android.view.View;
import h4.InterfaceC0986a;
import h4.v;
import h4.w;
import j4.C1054a;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class k implements InterfaceC0986a, v {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ n f16735a;

    public k(n nVar) {
        this.f16735a = nVar;
    }

    @Override // h4.InterfaceC0986a
    public void onAnimationCancel(h4.b bVar) {
        InterfaceC0986a interfaceC0986a = this.f16735a.f16745f;
        if (interfaceC0986a != null) {
            interfaceC0986a.onAnimationCancel(bVar);
        }
    }

    @Override // h4.InterfaceC0986a
    public void onAnimationEnd(h4.b bVar) {
        n nVar = this.f16735a;
        InterfaceC0986a interfaceC0986a = nVar.f16745f;
        if (interfaceC0986a != null) {
            interfaceC0986a.onAnimationEnd(bVar);
        }
        nVar.f16749j.remove(bVar);
        if (nVar.f16749j.isEmpty()) {
            nVar.f16745f = null;
        }
    }

    @Override // h4.InterfaceC0986a
    public void onAnimationRepeat(h4.b bVar) {
        InterfaceC0986a interfaceC0986a = this.f16735a.f16745f;
        if (interfaceC0986a != null) {
            interfaceC0986a.onAnimationRepeat(bVar);
        }
    }

    @Override // h4.InterfaceC0986a
    public void onAnimationStart(h4.b bVar) {
        InterfaceC0986a interfaceC0986a = this.f16735a.f16745f;
        if (interfaceC0986a != null) {
            interfaceC0986a.onAnimationStart(bVar);
        }
    }

    @Override // h4.v
    public void onAnimationUpdate(w wVar) {
        View view;
        float animatedFraction = wVar.getAnimatedFraction();
        n nVar = this.f16735a;
        m mVar = (m) nVar.f16749j.get(wVar);
        int i2 = mVar.f16739a & 511;
        WeakReference weakReference = nVar.f16742c;
        if (i2 != 0 && (view = (View) weakReference.get()) != null) {
            view.invalidate();
        }
        ArrayList arrayList = mVar.f16740b;
        int size = arrayList.size();
        for (int i7 = 0; i7 < size; i7++) {
            l lVar = (l) arrayList.get(i7);
            float f3 = (lVar.f16738c * animatedFraction) + lVar.f16737b;
            int i8 = lVar.f16736a;
            C1054a c1054a = nVar.f16741b;
            if (i8 == 1) {
                c1054a.setTranslationX(f3);
            } else if (i8 == 2) {
                c1054a.setTranslationY(f3);
            } else if (i8 == 4) {
                c1054a.setScaleX(f3);
            } else if (i8 == 8) {
                c1054a.setScaleY(f3);
            } else if (i8 == 16) {
                c1054a.setRotation(f3);
            } else if (i8 == 32) {
                c1054a.setRotationX(f3);
            } else if (i8 == 64) {
                c1054a.setRotationY(f3);
            } else if (i8 == 128) {
                c1054a.setX(f3);
            } else if (i8 == 256) {
                c1054a.setY(f3);
            } else if (i8 == 512) {
                c1054a.setAlpha(f3);
            }
        }
        View view2 = (View) weakReference.get();
        if (view2 != null) {
            view2.invalidate();
        }
    }
}
