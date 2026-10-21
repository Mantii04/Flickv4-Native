package flix.com.vision.utils;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes2.dex */
public class StickyRecyclerView extends RecyclerView {
    public StickyRecyclerView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public boolean fling(int i2, int i7) {
        LinearLayoutManager linearLayoutManager = (LinearLayoutManager) getLayoutManager();
        int i8 = Resources.getSystem().getDisplayMetrics().widthPixels;
        View findViewByPosition = linearLayoutManager.findViewByPosition(linearLayoutManager.findLastVisibleItemPosition());
        View findViewByPosition2 = linearLayoutManager.findViewByPosition(linearLayoutManager.findFirstVisibleItemPosition());
        int width = (i8 - findViewByPosition.getWidth()) / 2;
        int width2 = findViewByPosition2.getWidth() + ((i8 - findViewByPosition2.getWidth()) / 2);
        int left = findViewByPosition.getLeft();
        int right = findViewByPosition2.getRight();
        int i9 = left - width;
        int i10 = width2 - right;
        if (Math.abs(i2) >= 1000) {
            if (i2 > 0) {
                smoothScrollBy(i9, 0);
            } else {
                smoothScrollBy(-i10, 0);
            }
            return true;
        }
        int i11 = i8 / 2;
        if (left > i11) {
            smoothScrollBy(-i10, 0);
        } else if (right < i11) {
            smoothScrollBy(i9, 0);
        } else if (i2 > 0) {
            smoothScrollBy(-i10, 0);
        } else {
            smoothScrollBy(i9, 0);
        }
        return true;
    }

    @Override // androidx.recyclerview.widget.RecyclerView
    public void onScrollStateChanged(int i2) {
        super.onScrollStateChanged(i2);
        if (i2 == 0) {
            try {
                LinearLayoutManager linearLayoutManager = (LinearLayoutManager) getLayoutManager();
                int i7 = Resources.getSystem().getDisplayMetrics().widthPixels;
                View findViewByPosition = linearLayoutManager.findViewByPosition(linearLayoutManager.findLastVisibleItemPosition());
                View findViewByPosition2 = linearLayoutManager.findViewByPosition(linearLayoutManager.findFirstVisibleItemPosition());
                int width = (i7 - findViewByPosition.getWidth()) / 2;
                int width2 = ((i7 - findViewByPosition2.getWidth()) / 2) + findViewByPosition2.getWidth();
                int left = findViewByPosition.getLeft();
                int right = findViewByPosition2.getRight();
                int i8 = left - width;
                int i9 = width2 - right;
                if (left > i7 / 2) {
                    smoothScrollBy(-i9, 0);
                } else if (right < i7 / 2) {
                    smoothScrollBy(i8, 0);
                }
            } catch (Exception unused) {
            }
        }
    }
}
