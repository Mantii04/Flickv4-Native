package e0;

import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputConnectionWrapper;
import android.widget.EditText;

/* renamed from: e0.d, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C0850d extends InputConnectionWrapper {

    /* renamed from: a, reason: collision with root package name */
    public final EditText f13912a;

    /* renamed from: b, reason: collision with root package name */
    public final C0849c f13913b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C0850d(EditText editText, InputConnection inputConnection, EditorInfo editorInfo) {
        super(inputConnection, false);
        C0849c c0849c = new C0849c();
        this.f13912a = editText;
        this.f13913b = c0849c;
        c0849c.updateEditorInfoAttrs(editorInfo);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingText(int i2, int i7) {
        return this.f13913b.handleDeleteSurroundingText(this, this.f13912a.getEditableText(), i2, i7, false) || super.deleteSurroundingText(i2, i7);
    }

    @Override // android.view.inputmethod.InputConnectionWrapper, android.view.inputmethod.InputConnection
    public boolean deleteSurroundingTextInCodePoints(int i2, int i7) {
        return this.f13913b.handleDeleteSurroundingText(this, this.f13912a.getEditableText(), i2, i7, true) || super.deleteSurroundingTextInCodePoints(i2, i7);
    }
}
