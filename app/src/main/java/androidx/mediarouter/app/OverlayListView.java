package androidx.mediarouter.app;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.drawable.BitmapDrawable;
import android.util.AttributeSet;
import android.widget.ListView;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
final class OverlayListView extends ListView {

    /* renamed from: b, reason: collision with root package name */
    public final ArrayList f7728b;

    public OverlayListView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f7728b = new ArrayList();
    }

    public void addOverlayObject(q0 q0Var) {
        this.f7728b.add(q0Var);
    }

    @Override // android.view.View
    public void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        ArrayList arrayList = this.f7728b;
        if (arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                q0 q0Var = (q0) it.next();
                BitmapDrawable bitmapDrawable = q0Var.getBitmapDrawable();
                if (bitmapDrawable != null) {
                    bitmapDrawable.draw(canvas);
                }
                if (!q0Var.update(getDrawingTime())) {
                    it.remove();
                }
            }
        }
    }

    public void startAnimationAll() {
        Iterator it = this.f7728b.iterator();
        while (it.hasNext()) {
            q0 q0Var = (q0) it.next();
            if (!q0Var.isAnimationStarted()) {
                q0Var.startAnimation(getDrawingTime());
            }
        }
    }

    public void stopAnimationAll() {
        Iterator it = this.f7728b.iterator();
        while (it.hasNext()) {
            ((q0) it.next()).stopAnimation();
        }
    }
}
