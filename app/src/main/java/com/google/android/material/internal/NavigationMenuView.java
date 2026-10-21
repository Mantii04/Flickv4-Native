package com.google.android.material.internal;

import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import k.C1084p;
import k.InterfaceC1062G;

/* loaded from: classes2.dex */
public class NavigationMenuView extends RecyclerView implements InterfaceC1062G {
    public NavigationMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public int getWindowAnimations() {
        return 0;
    }

    public NavigationMenuView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        setLayoutManager(new LinearLayoutManager(context, 1, false));
    }

    @Override // k.InterfaceC1062G
    public void initialize(C1084p c1084p) {
    }
}
