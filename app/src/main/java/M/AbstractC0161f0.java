package M;

import android.content.ClipData;
import android.view.PointerIcon;
import android.view.View;

/* renamed from: M.f0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC0161f0 {
    public static void a(View view) {
        view.cancelDragAndDrop();
    }

    public static void b(View view) {
        view.dispatchFinishTemporaryDetach();
    }

    public static void c(View view) {
        view.dispatchStartTemporaryDetach();
    }

    public static void d(View view, PointerIcon pointerIcon) {
        view.setPointerIcon(pointerIcon);
    }

    public static boolean e(View view, ClipData clipData, View.DragShadowBuilder dragShadowBuilder, Object obj, int i2) {
        return view.startDragAndDrop(clipData, dragShadowBuilder, obj, i2);
    }

    public static void f(View view, View.DragShadowBuilder dragShadowBuilder) {
        view.updateDragShadow(dragShadowBuilder);
    }
}
