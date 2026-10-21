package com.google.android.material.datepicker;

import android.graphics.Canvas;
import androidx.recyclerview.widget.GridLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import m1.AbstractC1276d0;
import m1.x0;

/* loaded from: classes2.dex */
public final class r extends AbstractC1276d0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ MaterialCalendar f12647a;

    public r(MaterialCalendar materialCalendar) {
        this.f12647a = materialCalendar;
        M.c(null);
        M.c(null);
    }

    @Override // m1.AbstractC1276d0
    public void onDraw(Canvas canvas, RecyclerView recyclerView, x0 x0Var) {
        if ((recyclerView.getAdapter() instanceof O) && (recyclerView.getLayoutManager() instanceof GridLayoutManager)) {
            this.f12647a.getClass();
            throw null;
        }
    }
}
