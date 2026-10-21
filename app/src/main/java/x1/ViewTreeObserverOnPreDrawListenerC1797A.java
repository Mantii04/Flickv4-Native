package x1;

import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import java.util.ArrayList;
import java.util.Iterator;

/* renamed from: x1.A, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class ViewTreeObserverOnPreDrawListenerC1797A implements ViewTreeObserver.OnPreDrawListener, View.OnAttachStateChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public androidx.transition.e f20770b;

    /* renamed from: e, reason: collision with root package name */
    public ViewGroup f20771e;

    /* JADX WARN: Removed duplicated region for block: B:116:0x01f9 A[EDGE_INSN: B:116:0x01f9->B:117:0x01f9 BREAK  A[LOOP:1: B:17:0x0087->B:29:0x01ef], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x004e  */
    /* JADX WARN: Removed duplicated region for block: B:120:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:130:0x0225  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x0253  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x008c  */
    @Override // android.view.ViewTreeObserver.OnPreDrawListener
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean onPreDraw() {
        /*
            Method dump skipped, instructions count: 715
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: x1.ViewTreeObserverOnPreDrawListenerC1797A.onPreDraw():boolean");
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewDetachedFromWindow(View view) {
        ViewGroup viewGroup = this.f20771e;
        viewGroup.getViewTreeObserver().removeOnPreDrawListener(this);
        viewGroup.removeOnAttachStateChangeListener(this);
        ArrayList arrayList = AbstractC1798B.f20774c;
        ViewGroup viewGroup2 = this.f20771e;
        arrayList.remove(viewGroup2);
        ArrayList arrayList2 = (ArrayList) AbstractC1798B.a().get(viewGroup2);
        if (arrayList2 != null && arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                ((androidx.transition.e) it.next()).resume(viewGroup2);
            }
        }
        this.f20770b.e(true);
    }

    @Override // android.view.View.OnAttachStateChangeListener
    public void onViewAttachedToWindow(View view) {
    }
}
