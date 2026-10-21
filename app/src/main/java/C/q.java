package C;

import C4.Z;
import android.app.ProgressDialog;
import android.view.View;
import androidx.media3.exoplayer.audio.AudioRendererEventListener;
import com.google.android.material.sidesheet.SideSheetBehavior;

/* loaded from: classes.dex */
public final /* synthetic */ class q implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ int f332b;

    /* renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f333e;

    /* renamed from: f, reason: collision with root package name */
    public final /* synthetic */ Object f334f;

    public /* synthetic */ q(Object obj, int i2, int i7) {
        this.f332b = i7;
        this.f334f = obj;
        this.f333e = i2;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f332b) {
            case 0:
                ((r) this.f334f).onFontRetrievalFailed(this.f333e);
                break;
            case 1:
                Z z6 = (Z) this.f334f;
                z6.f632j.clearFocus();
                z6.f632j.scrollToPosition(this.f333e);
                break;
            case 2:
                SideSheetBehavior sideSheetBehavior = (SideSheetBehavior) this.f334f;
                View view = (View) sideSheetBehavior.f12805y.get();
                if (view != null) {
                    sideSheetBehavior.c(view, false, this.f333e);
                    break;
                }
                break;
            case 3:
                ProgressDialog progressDialog = ((T4.r) this.f334f).f3723d;
                if (progressDialog != null) {
                    progressDialog.setProgress(this.f333e);
                    break;
                }
                break;
            default:
                ((AudioRendererEventListener.EventDispatcher) this.f334f).lambda$audioSessionIdChanged$12(this.f333e);
                break;
        }
    }
}
