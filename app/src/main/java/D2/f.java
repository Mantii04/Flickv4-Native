package D2;

import G2.r;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import com.bumptech.glide.R;
import java.util.ArrayList;

/* loaded from: classes.dex */
public abstract class f implements k {

    /* renamed from: f, reason: collision with root package name */
    public static final int f876f = R.id.glide_custom_view_target_tag;

    /* renamed from: b, reason: collision with root package name */
    public final e f877b;

    /* renamed from: e, reason: collision with root package name */
    public final View f878e;

    public f(View view) {
        this.f878e = (View) r.checkNotNull(view);
        this.f877b = new e(view);
    }

    @Override // D2.k
    public final C2.c getRequest() {
        Object tag = this.f878e.getTag(f876f);
        if (tag == null) {
            return null;
        }
        if (tag instanceof C2.c) {
            return (C2.c) tag;
        }
        throw new IllegalArgumentException("You must not pass non-R.id ids to setTag(id)");
    }

    @Override // D2.k
    public final void getSize(j jVar) {
        e eVar = this.f877b;
        View view = eVar.f873a;
        int paddingRight = view.getPaddingRight() + view.getPaddingLeft();
        ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
        int a7 = eVar.a(view.getWidth(), layoutParams != null ? layoutParams.width : 0, paddingRight);
        View view2 = eVar.f873a;
        int paddingBottom = view2.getPaddingBottom() + view2.getPaddingTop();
        ViewGroup.LayoutParams layoutParams2 = view2.getLayoutParams();
        int a8 = eVar.a(view2.getHeight(), layoutParams2 != null ? layoutParams2.height : 0, paddingBottom);
        if ((a7 > 0 || a7 == Integer.MIN_VALUE) && (a8 > 0 || a8 == Integer.MIN_VALUE)) {
            ((com.bumptech.glide.request.a) jVar).onSizeReady(a7, a8);
            return;
        }
        ArrayList arrayList = eVar.f874b;
        if (!arrayList.contains(jVar)) {
            arrayList.add(jVar);
        }
        if (eVar.f875c == null) {
            ViewTreeObserver viewTreeObserver = view2.getViewTreeObserver();
            d dVar = new d(eVar);
            eVar.f875c = dVar;
            viewTreeObserver.addOnPreDrawListener(dVar);
        }
    }

    @Override // D2.k
    public final void onLoadCleared(Drawable drawable) {
        e eVar = this.f877b;
        ViewTreeObserver viewTreeObserver = eVar.f873a.getViewTreeObserver();
        if (viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnPreDrawListener(eVar.f875c);
        }
        eVar.f875c = null;
        eVar.f874b.clear();
        onResourceCleared(drawable);
    }

    @Override // D2.k
    public final void onLoadStarted(Drawable drawable) {
        onResourceLoading(drawable);
    }

    public abstract void onResourceCleared(Drawable drawable);

    @Override // D2.k
    public final void removeCallback(j jVar) {
        this.f877b.f874b.remove(jVar);
    }

    @Override // D2.k
    public final void setRequest(C2.c cVar) {
        this.f878e.setTag(f876f, cVar);
    }

    public String toString() {
        return "Target for: " + this.f878e;
    }

    @Override // com.bumptech.glide.manager.l
    public void onDestroy() {
    }

    @Override // com.bumptech.glide.manager.l
    public void onStart() {
    }

    @Override // com.bumptech.glide.manager.l
    public void onStop() {
    }

    public void onResourceLoading(Drawable drawable) {
    }
}
