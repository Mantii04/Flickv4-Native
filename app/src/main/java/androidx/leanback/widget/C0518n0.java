package androidx.leanback.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.LinearLayout;

/* renamed from: androidx.leanback.widget.n0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0518n0 extends LinearLayout {

    /* renamed from: b, reason: collision with root package name */
    public final HorizontalGridView f6879b;

    public C0518n0(Context context) {
        this(context, null);
    }

    public HorizontalGridView getGridView() {
        return this.f6879b;
    }

    public C0518n0(Context context, AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public C0518n0(Context context, AttributeSet attributeSet, int i2) {
        super(context, attributeSet, i2);
        LayoutInflater.from(context).inflate(androidx.leanback.R.layout.lb_list_row, this);
        HorizontalGridView horizontalGridView = (HorizontalGridView) findViewById(androidx.leanback.R.id.row_content);
        this.f6879b = horizontalGridView;
        horizontalGridView.setHasFixedSize(false);
        setOrientation(1);
        setDescendantFocusability(262144);
    }
}
