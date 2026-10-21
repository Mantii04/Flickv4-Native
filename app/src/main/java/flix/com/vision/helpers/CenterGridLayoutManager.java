package flix.com.vision.helpers;

import T4.b;
import android.content.Context;
import android.util.Log;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import m1.C1300p0;
import m1.x0;

/* loaded from: classes2.dex */
public class CenterGridLayoutManager extends GridLayoutManager {
    public CenterGridLayoutManager(Context context, int i2) {
        super(context, i2);
        setSpanCount(i2);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public int getExtraLayoutSpace(x0 x0Var) {
        return 2000;
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public void onLayoutChildren(C1300p0 c1300p0, x0 x0Var) {
        try {
            super.onLayoutChildren(c1300p0, x0Var);
        } catch (IndexOutOfBoundsException unused) {
            Log.e("LayoutManager", "Inconsistency detected, skipping layout pass");
        }
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public void smoothScrollToPosition(RecyclerView recyclerView, x0 x0Var, int i2) {
        b bVar = new b(recyclerView.getContext());
        bVar.setTargetPosition(i2);
        startSmoothScroll(bVar);
    }

    @Override // androidx.recyclerview.widget.GridLayoutManager, androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public boolean supportsPredictiveItemAnimations() {
        return false;
    }
}
