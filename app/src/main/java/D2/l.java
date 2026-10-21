package D2;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
public final class l implements ViewTreeObserver.OnPreDrawListener {

    /* renamed from: b, reason: collision with root package name */
    public final WeakReference f880b;

    public l(m mVar) {
        this.f880b = new WeakReference(mVar);
    }

    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    public boolean onPreDraw() {
        if (Log.isLoggable("ViewTarget", 2)) {
            Log.v("ViewTarget", "OnGlobalLayoutListener called attachStateListener=" + this);
        }
        m mVar = (m) this.f880b.get();
        if (mVar == null) {
            return true;
        }
        ArrayList arrayList = mVar.f883b;
        if (arrayList.isEmpty()) {
            return true;
        }
        View view = mVar.f882a;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int a7 = mVar.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        int paddingBottom = view.getPaddingBottom() + view.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view.getLayoutParams();
        int a8 = mVar.a(view.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if (a7 <= 0 && a7 != Integer.MIN_VALUE) {
            return true;
        }
        if (a8 <= 0 && a8 != Integer.MIN_VALUE) {
            return true;
        }
        Iterator it = new ArrayList(arrayList).iterator();
        while (it.hasNext()) {
            ((com.bumptech.glide.request.a) ((j) it.next())).onSizeReady(a7, a8);
        }
        ViewTreeObserver viewTreeObserver = view.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(mVar.f884c);
        }
        mVar.f884c = null;
        arrayList.clear();
        return true;
    }
}
