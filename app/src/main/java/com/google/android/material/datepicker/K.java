package com.google.android.material.datepicker;

import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import m1.x0;

/* loaded from: classes2.dex */
public abstract class K extends LinearLayoutManager {
    @Override // androidx.recyclerview.widget.LinearLayoutManager, m1.AbstractC1286i0
    public void smoothScrollToPosition(RecyclerView recyclerView, x0 x0Var, int i2) {
        J j7 = new J(recyclerView.getContext());
        j7.setTargetPosition(i2);
        startSmoothScroll(j7);
    }
}
