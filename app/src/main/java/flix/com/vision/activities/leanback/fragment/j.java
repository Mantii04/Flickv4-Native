package flix.com.vision.activities.leanback.fragment;

import androidx.leanback.widget.AbstractC0516m0;
import androidx.leanback.widget.C0514l0;
import androidx.leanback.widget.HorizontalGridView;
import androidx.leanback.widget.M0;

/* loaded from: classes2.dex */
public final class j extends AbstractC0516m0 {
    @Override // androidx.leanback.widget.AbstractC0516m0, androidx.leanback.widget.N0
    public void initializeRowViewHolder(M0 m02) {
        super.initializeRowViewHolder(m02);
        HorizontalGridView gridView = ((C0514l0) m02).getGridView();
        gridView.setClipChildren(false);
        gridView.setClipToPadding(false);
        gridView.setPadding(40, gridView.getPaddingTop(), gridView.getPaddingRight(), gridView.getPaddingBottom() + 20);
    }
}
