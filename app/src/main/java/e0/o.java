package e0;

import android.graphics.Rect;
import android.text.method.TransformationMethod;
import android.view.View;
import androidx.emoji2.text.p;

/* loaded from: classes.dex */
public final class o implements TransformationMethod {

    /* renamed from: a, reason: collision with root package name */
    public final TransformationMethod f13930a;

    public o(TransformationMethod transformationMethod) {
        this.f13930a = transformationMethod;
    }

    public TransformationMethod getOriginalTransformationMethod() {
        return this.f13930a;
    }

    @Override // android.text.method.TransformationMethod
    public CharSequence getTransformation(CharSequence charSequence, View view) {
        if (view.isInEditMode()) {
            return charSequence;
        }
        TransformationMethod transformationMethod = this.f13930a;
        if (transformationMethod != null) {
            charSequence = transformationMethod.getTransformation(charSequence, view);
        }
        return (charSequence == null || p.get().getLoadState() != 1) ? charSequence : p.get().process(charSequence);
    }

    @Override // android.text.method.TransformationMethod
    public void onFocusChanged(View view, CharSequence charSequence, boolean z6, int i2, Rect rect) {
        TransformationMethod transformationMethod = this.f13930a;
        if (transformationMethod != null) {
            transformationMethod.onFocusChanged(view, charSequence, z6, i2, rect);
        }
    }
}
