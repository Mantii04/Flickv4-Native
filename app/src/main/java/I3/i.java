package I3;

import android.content.Context;
import android.util.Log;
import android.view.ViewGroup;
import x3.V;

/* loaded from: classes2.dex */
public final class i implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ t f1327b;

    public i(t tVar) {
        this.f1327b = tVar;
    }

    @Override // java.lang.Runnable
    public void run() {
        Context context;
        t tVar = this.f1327b;
        if (tVar.f1362i == null || (context = tVar.f1361h) == null) {
            return;
        }
        int height = V.getCurrentWindowBounds(context).height();
        int[] iArr = new int[2];
        s sVar = tVar.f1362i;
        sVar.getLocationInWindow(iArr);
        int height2 = (height - (sVar.getHeight() + iArr[1])) + ((int) tVar.f1362i.getTranslationY());
        int i2 = tVar.f1370q;
        if (height2 >= i2) {
            tVar.f1371r = i2;
            return;
        }
        ViewGroup.LayoutParams layoutParams = tVar.f1362i.getLayoutParams();
        if (!(layoutParams instanceof ViewGroup.MarginLayoutParams)) {
            Log.w(t.f1348A, "Unable to apply gesture inset because layout params are not MarginLayoutParams");
            return;
        }
        int i7 = tVar.f1370q;
        tVar.f1371r = i7;
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) layoutParams;
        marginLayoutParams.bottomMargin = (i7 - height2) + marginLayoutParams.bottomMargin;
        tVar.f1362i.requestLayout();
    }
}
