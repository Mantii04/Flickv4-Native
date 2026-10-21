package j;

import android.view.KeyboardShortcutGroup;
import android.view.Menu;
import android.view.Window;
import java.util.List;

/* renamed from: j.p, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public abstract class AbstractC1033p {
    public static void a(Window.Callback callback, List<KeyboardShortcutGroup> list, Menu menu, int i2) {
        callback.onProvideKeyboardShortcuts(list, menu, i2);
    }
}
