package x1;

import android.graphics.Rect;
import android.util.Property;
import android.view.View;

/* loaded from: classes.dex */
public final class L extends Property {
    @Override // android.util.Property
    public Rect get(View view) {
        return view.getClipBounds();
    }

    @Override // android.util.Property
    public void set(View view, Rect rect) {
        view.setClipBounds(rect);
    }
}
