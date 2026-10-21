package e0;

import android.text.Editable;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import androidx.emoji2.text.p;

/* renamed from: e0.c, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0849c {
    public boolean handleDeleteSurroundingText(InputConnection inputConnection, Editable editable, int i2, int i7, boolean z6) {
        return p.handleDeleteSurroundingText(inputConnection, editable, i2, i7, z6);
    }

    public void updateEditorInfoAttrs(EditorInfo editorInfo) {
        if (p.isConfigured()) {
            p.get().updateEditorInfo(editorInfo);
        }
    }
}
