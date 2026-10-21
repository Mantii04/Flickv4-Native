package k;

import android.view.View;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: k.e, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserverOnGlobalLayoutListenerC1073e implements ViewTreeObserver.OnGlobalLayoutListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ ViewOnKeyListenerC1078j f17095b;

    public ViewTreeObserverOnGlobalLayoutListenerC1073e(ViewOnKeyListenerC1078j viewOnKeyListenerC1078j) {
        this.f17095b = viewOnKeyListenerC1078j;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
    public void onGlobalLayout() {
        ViewOnKeyListenerC1078j viewOnKeyListenerC1078j = this.f17095b;
        if (viewOnKeyListenerC1078j.isShowing()) {
            ArrayList arrayList = viewOnKeyListenerC1078j.f17123r;
            if (arrayList.size() <= 0 || ((C1077i) arrayList.get(0)).f17102a.isModal()) {
                return;
            }
            View view = viewOnKeyListenerC1078j.f17130y;
            if (view == null || !view.isShown()) {
                viewOnKeyListenerC1078j.dismiss();
                return;
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((C1077i) it.next()).f17102a.show();
            }
        }
    }
}
