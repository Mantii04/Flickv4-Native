package androidx.appcompat.view.menu;

import android.R;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import k.C1084p;
import k.InterfaceC1062G;
import k.InterfaceC1083o;
import k.s;
import l.e2;

/* loaded from: classes.dex */
public final class ExpandedMenuView extends ListView implements InterfaceC1083o, InterfaceC1062G, AdapterView.OnItemClickListener {

    /* renamed from: e, reason: collision with root package name */
    public static final int[] f4947e = {R.attr.background, R.attr.divider};

    /* renamed from: b, reason: collision with root package name */
    public C1084p f4948b;

    public ExpandedMenuView(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, R.attr.listViewStyle);
    }

    public int getWindowAnimations() {
        return 0;
    }

    @Override // k.InterfaceC1062G
    public void initialize(C1084p c1084p) {
        this.f4948b = c1084p;
    }

    @Override // k.InterfaceC1083o
    public boolean invokeItem(s sVar) {
        return this.f4948b.performItemAction(sVar, 0);
    }

    @Override // android.widget.ListView, android.widget.AbsListView, android.widget.AdapterView, android.view.ViewGroup, android.view.View
    public void onDetachedFromWindow() {
        super.onDetachedFromWindow();
        setChildrenDrawingCacheEnabled(false);
    }

    @Override // android.widget.AdapterView.OnItemClickListener
    public void onItemClick(AdapterView adapterView, View view, int i2, long j7) {
        invokeItem((s) getAdapter().getItem(i2));
    }

    public ExpandedMenuView(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet);
        setOnItemClickListener(this);
        e2 obtainStyledAttributes = e2.obtainStyledAttributes(context, attributeSet, f4947e, i2, 0);
        if (obtainStyledAttributes.hasValue(0)) {
            setBackgroundDrawable(obtainStyledAttributes.getDrawable(0));
        }
        if (obtainStyledAttributes.hasValue(1)) {
            setDivider(obtainStyledAttributes.getDrawable(1));
        }
        obtainStyledAttributes.recycle();
    }
}
