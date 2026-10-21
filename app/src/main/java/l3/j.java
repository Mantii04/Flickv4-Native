package l3;

import W.l;
import com.google.android.material.bottomsheet.BottomSheetBehavior;

/* loaded from: classes2.dex */
public final class j implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ H3.i f18145b;

    public j(H3.i iVar) {
        this.f18145b = iVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        H3.i iVar = this.f18145b;
        iVar.f1213c = false;
        l lVar = ((BottomSheetBehavior) iVar.f1215e).f12479V;
        if (lVar != null && lVar.continueSettling(true)) {
            iVar.a(iVar.f1212b);
            return;
        }
        BottomSheetBehavior bottomSheetBehavior = (BottomSheetBehavior) iVar.f1215e;
        if (bottomSheetBehavior.f12478U == 2) {
            bottomSheetBehavior.i(iVar.f1212b);
        }
    }
}
