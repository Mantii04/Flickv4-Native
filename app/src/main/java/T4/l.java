package T4;

import android.graphics.Rect;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import m1.AbstractC1276d0;
import m1.x0;

/* loaded from: classes2.dex */
public final class l extends AbstractC1276d0 {

    /* renamed from: a, reason: collision with root package name */
    public final int f3716a;

    public l(int i2) {
        this.f3716a = i2;
    }

    @Override // m1.AbstractC1276d0
    public void getItemOffsets(Rect rect, View view, RecyclerView recyclerView, x0 x0Var) {
        int i2 = this.f3716a;
        rect.left = i2;
        rect.right = i2;
        rect.bottom = i2;
        if (recyclerView.getChildLayoutPosition(view) == 0) {
            rect.top = i2;
        } else {
            rect.top = 0;
        }
    }
}
