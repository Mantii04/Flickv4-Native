package m1;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;

/* renamed from: m1.d0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1276d0 {
    @Deprecated
    public void getItemOffsets(Rect rect, int i2, RecyclerView recyclerView) {
        rect.set(0, 0, 0, 0);
    }

    public void onDraw(Canvas canvas, RecyclerView recyclerView, x0 x0Var) {
        onDraw(canvas, recyclerView);
    }

    public void onDrawOver(Canvas canvas, RecyclerView recyclerView, x0 x0Var) {
        onDrawOver(canvas, recyclerView);
    }

    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, x0 x0Var) {
        getItemOffsets(rect, ((C1288j0) view.getLayoutParams()).getViewLayoutPosition(), recyclerView);
    }

    @Deprecated
    public void onDraw(Canvas canvas, RecyclerView recyclerView) {
    }

    @Deprecated
    public void onDrawOver(Canvas canvas, RecyclerView recyclerView) {
    }
}
