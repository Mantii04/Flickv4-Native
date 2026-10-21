package androidx.fragment.app;

import M.AbstractC0181p0;
import M.AbstractC0192v0;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

/* renamed from: androidx.fragment.app.s, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0480s extends M0 {
    public static void i(View view, ArrayList arrayList) {
        if (!(view instanceof ViewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(view);
            return;
        }
        ViewGroup viewGroup = (ViewGroup) view;
        if (AbstractC0192v0.isTransitionGroup(viewGroup)) {
            if (arrayList.contains(view)) {
                return;
            }
            arrayList.add(viewGroup);
            return;
        }
        int childCount = viewGroup.getChildCount();
        for (int i2 = 0; i2 < childCount; i2++) {
            View childAt = viewGroup.getChildAt(i2);
            if (childAt.getVisibility() == 0) {
                i(childAt, arrayList);
            }
        }
    }

    public static void j(p.g gVar, View view) {
        String transitionName = AbstractC0181p0.getTransitionName(view);
        if (transitionName != null) {
            gVar.put(transitionName, view);
        }
        if (view instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) view;
            int childCount = viewGroup.getChildCount();
            for (int i2 = 0; i2 < childCount; i2++) {
                View childAt = viewGroup.getChildAt(i2);
                if (childAt.getVisibility() == 0) {
                    j(gVar, childAt);
                }
            }
        }
    }

    public static void k(p.g gVar, Collection collection) {
        Iterator<Map.Entry<Object, Object>> it = gVar.entrySet().iterator();
        while (it.hasNext()) {
            if (!collection.contains(AbstractC0181p0.getTransitionName((View) it.next().getValue()))) {
                it.remove();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:132:0x0811  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x08c5 A[LOOP:7: B:160:0x08bf->B:162:0x08c5, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:166:0x08e2  */
    /* JADX WARN: Removed duplicated region for block: B:168:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0744  */
    @Override // androidx.fragment.app.M0
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(java.util.ArrayList r39, boolean r40) {
        /*
            Method dump skipped, instructions count: 2300
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.fragment.app.C0480s.b(java.util.ArrayList, boolean):void");
    }
}
