package com.google.android.material.theme;

import B3.a;
import K3.x;
import android.content.Context;
import android.util.AttributeSet;
import androidx.appcompat.widget.AppCompatTextView;
import com.google.android.material.button.MaterialButton;
import e.e0;
import l.C1119A;
import l.C1121C;
import l.C1122D;
import l.V;
import p3.C1500d;

/* loaded from: classes2.dex */
public class MaterialComponentsViewInflater extends e0 {
    @Override // e.e0
    public C1119A createAutoCompleteTextView(Context context, AttributeSet attributeSet) {
        return new x(context, attributeSet);
    }

    @Override // e.e0
    public C1121C createButton(Context context, AttributeSet attributeSet) {
        return new MaterialButton(context, attributeSet);
    }

    @Override // e.e0
    public C1122D createCheckBox(Context context, AttributeSet attributeSet) {
        return new C1500d(context, attributeSet);
    }

    @Override // e.e0
    public V createRadioButton(Context context, AttributeSet attributeSet) {
        return new a(context, attributeSet);
    }

    @Override // e.e0
    public AppCompatTextView createTextView(Context context, AttributeSet attributeSet) {
        return new L3.a(context, attributeSet);
    }
}
