package flix.com.vision.helpers;

import T4.c;
import android.content.Context;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import m1.x0;

/* loaded from: classes2.dex */
public class CenterLayoutManager extends LinearLayoutManager {
    public CenterLayoutManager(Context context, int i2, boolean z6) {
        super(context, i2, z6);
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager
    public int getExtraLayoutSpace(x0 x0Var) {
        return 2000;
    }

    @Override // androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public void smoothScrollToPosition(RecyclerView recyclerView, x0 x0Var, int i2) {
        c cVar = new c(recyclerView.getContext());
        cVar.setTargetPosition(i2);
        startSmoothScroll(cVar);
    }
}
