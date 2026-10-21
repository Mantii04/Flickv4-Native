package C4;

import android.widget.ImageView;
import m4.InterfaceC1330i;

/* renamed from: C4.s, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C0094s implements InterfaceC1330i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ C0095t f772a;

    public C0094s(C0095t c0095t) {
        this.f772a = c0095t;
    }

    @Override // m4.InterfaceC1330i
    public void onError(Exception exc) {
        this.f772a.f776x.setVisibility(8);
    }

    @Override // m4.InterfaceC1330i
    public void onSuccess() {
        C0095t c0095t = this.f772a;
        c0095t.f776x.setScaleType(ImageView.ScaleType.FIT_CENTER);
        c0095t.f776x.setVisibility(0);
    }
}
