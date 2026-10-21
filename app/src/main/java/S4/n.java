package S4;

import android.view.View;
import flix.com.vision.activities.AnimesListActivity;

/* loaded from: classes2.dex */
public final class n implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ o f3395b;

    public n(o oVar) {
        this.f3395b = oVar;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        o oVar = this.f3395b;
        ((AnimesListActivity) oVar.getActivity()).applyFilter();
        oVar.getClass();
        oVar.dismiss();
    }
}
