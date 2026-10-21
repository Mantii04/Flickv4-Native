package C4;

import android.graphics.drawable.BitmapDrawable;
import flix.com.vision.activities.MainActivity;
import m4.InterfaceC1330i;

/* loaded from: classes2.dex */
public final class k0 implements InterfaceC1330i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ l0 f720a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ m0 f721b;

    public k0(m0 m0Var, l0 l0Var) {
        this.f721b = m0Var;
        this.f720a = l0Var;
    }

    @Override // m4.InterfaceC1330i
    public void onSuccess() {
        l0 l0Var = this.f720a;
        m0 m0Var = this.f721b;
        if (m0Var.f739h) {
            m0Var.f739h = false;
            try {
                l0Var.f726A.invalidate();
                g1.g generate = g1.g.from(((BitmapDrawable) l0Var.f726A.getDrawable()).getBitmap()).generate();
                l0Var.f728u.color = generate.getDarkVibrantColor(0);
                MainActivity mainActivity = m0Var.f743l;
                if (mainActivity != null) {
                    mainActivity.extractDominantColor(l0Var.f728u.color);
                }
            } catch (Exception unused) {
            }
        }
    }

    @Override // m4.InterfaceC1330i
    public void onError(Exception exc) {
    }
}
