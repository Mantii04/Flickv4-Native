package C4;

import android.graphics.drawable.BitmapDrawable;
import flix.com.vision.activities.MainActivity;
import m4.InterfaceC1330i;

/* loaded from: classes2.dex */
public final class N implements InterfaceC1330i {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ O f582a;

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ P f583b;

    public N(P p6, O o6) {
        this.f583b = p6;
        this.f582a = o6;
    }

    @Override // m4.InterfaceC1330i
    public void onError(Exception exc) {
        exc.printStackTrace();
    }

    @Override // m4.InterfaceC1330i
    public void onSuccess() {
        O o6 = this.f582a;
        P p6 = this.f583b;
        if (p6.f596i) {
            p6.f596i = false;
            try {
                o6.f584A.invalidate();
                g1.g generate = g1.g.from(((BitmapDrawable) o6.f584A.getDrawable()).getBitmap()).generate();
                o6.f585u.color = generate.getDarkVibrantColor(0);
                MainActivity mainActivity = p6.f600m;
                if (mainActivity != null) {
                    mainActivity.extractDominantColor(o6.f585u.color);
                }
            } catch (Exception e3) {
                e3.printStackTrace();
            }
        }
    }
}
