package D2;

import G2.r;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.bumptech.glide.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class n extends a {

    /* renamed from: f, reason: collision with root package name */
    public static final int f885f = R.id.glide_custom_view_target_tag;

    /* renamed from: b, reason: collision with root package name */
    public final View f886b;

    /* renamed from: e, reason: collision with root package name */
    public final m f887e;

    public n(View view) {
        this.f886b = (View) r.checkNotNull(view);
        this.f887e = new m(view);
    }

    @Override // D2.k
    public C2.c getRequest() {
        Object tag = this.f886b.getTag(f885f);
        if (tag == null) {
            return null;
        }
        if (tag instanceof C2.c) {
            return (C2.c) tag;
        }
        throw new IllegalArgumentException("You must not call setTag() on a view Glide is targeting");
    }

    @Override // D2.k
    public void getSize(j jVar) {
        m mVar = this.f887e;
        View view = mVar.f882a;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int a7 = mVar.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        View view2 = mVar.f882a;
        int paddingBottom = view2.getPaddingBottom() + view2.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
        int a8 = mVar.a(view2.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((a7 > 0 || a7 == Integer.MIN_VALUE) && (a8 > 0 || a8 == Integer.MIN_VALUE)) {
            ((com.bumptech.glide.request.a) jVar).onSizeReady(a7, a8);
            return;
        }
        ArrayList arrayList = mVar.f883b;
        if (!arrayList.contains(jVar)) {
            arrayList.add(jVar);
        }
        if (mVar.f884c == null) {
            ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
            l lVar = new l(mVar);
            mVar.f884c = lVar;
            viewTreeObserver.addOnPreDrawListener(lVar);
        }
    }

    @Override // D2.a, D2.k
    public void onLoadCleared(Drawable drawable) {
        super.onLoadCleared(drawable);
        m mVar = this.f887e;
        ViewTreeObserver viewTreeObserver = mVar.f882a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(mVar.f884c);
        }
        mVar.f884c = null;
        mVar.f883b.clear();
    }

    @Override // D2.a, D2.k
    public void onLoadStarted(Drawable drawable) {
        super.onLoadStarted(drawable);
    }

    @Override // D2.k
    public void removeCallback(j jVar) {
        this.f887e.f883b.remove(jVar);
    }

    @Override // D2.k
    public void setRequest(C2.c cVar) {
        this.f886b.setTag(f885f, cVar);
    }

    public String toString() {
        return "Target for: " + this.f886b;
    }
}
