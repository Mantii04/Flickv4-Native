package x1;

import android.view.View;
import java.util.ArrayList;

/* renamed from: x1.k, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1809k implements InterfaceC1820w {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f20816a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ArrayList f20817b;

    public C1809k(View view, ArrayList arrayList) {
        this.f20816a = view;
        this.f20817b = arrayList;
    }

    @Override // x1.InterfaceC1820w
    public final /* synthetic */ void onTransitionEnd(androidx.transition.e eVar, boolean z6) {
        AbstractC1819v.a(this, eVar, z6);
    }

    @Override // x1.InterfaceC1820w
    public final /* synthetic */ void onTransitionStart(androidx.transition.e eVar, boolean z6) {
        AbstractC1819v.b(this, eVar, z6);
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionEnd(androidx.transition.e eVar) {
        eVar.removeListener(this);
        this.f20816a.setVisibility(8);
        ArrayList arrayList = this.f20817b;
        int size = arrayList.size();
        for (int i2 = 0; i2 < size; i2++) {
            ((View) arrayList.get(i2)).setVisibility(0);
        }
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionStart(androidx.transition.e eVar) {
        eVar.removeListener(this);
        eVar.addListener(this);
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionCancel(androidx.transition.e eVar) {
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionPause(androidx.transition.e eVar) {
    }

    @Override // x1.InterfaceC1820w
    public void onTransitionResume(androidx.transition.e eVar) {
    }
}
