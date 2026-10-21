package R;

import android.view.inputmethod.EditorInfo;

/* loaded from: classes.dex */
public abstract class b {
    public static void a(EditorInfo editorInfo, CharSequence charSequence, int i2) {
        editorInfo.setInitialSurroundingSubText(charSequence, i2);
    }
}
