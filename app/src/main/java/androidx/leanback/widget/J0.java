package androidx.leanback.widget;

import android.view.View;
import android.widget.TextView;

/* loaded from: classes.dex */
public final class J0 extends A0 {

    /* renamed from: b, reason: collision with root package name */
    public float f6582b;

    /* renamed from: c, reason: collision with root package name */
    public final float f6583c;

    /* renamed from: d, reason: collision with root package name */
    public final RowHeaderView f6584d;

    /* renamed from: e, reason: collision with root package name */
    public final TextView f6585e;

    public J0(View view) {
        super(view);
        RowHeaderView rowHeaderView = (RowHeaderView) view.findViewById(androidx.leanback.R.id.row_header);
        this.f6584d = rowHeaderView;
        this.f6585e = (TextView) view.findViewById(androidx.leanback.R.id.row_header_description);
        if (rowHeaderView != null) {
            rowHeaderView.getCurrentTextColor();
        }
        this.f6583c = this.f6460a.getResources().getFraction(androidx.leanback.R.fraction.lb_browse_header_unselect_alpha, 1, 1);
    }
}
