package R;

import android.os.Build;
import android.view.View;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;

/* loaded from: classes.dex */
public abstract class g {
    @Deprecated
    public static InputConnection createWrapper(InputConnection inputConnection, EditorInfo editorInfo, f fVar) {
        L.c.requireNonNull(inputConnection, "inputConnection must be non-null");
        L.c.requireNonNull(editorInfo, "editorInfo must be non-null");
        L.c.requireNonNull(fVar, "onCommitContentListener must be non-null");
        return Build.VERSION.SDK_INT >= 25 ? new d(inputConnection, fVar) : c.getContentMimeTypes(editorInfo).length == 0 ? inputConnection : new e(inputConnection, fVar);
    }

    public static InputConnection createWrapper(View view, InputConnection inputConnection, EditorInfo editorInfo) {
        L.h.checkNotNull(view);
        return createWrapper(inputConnection, editorInfo, new A0.a(view, 9));
    }
}
