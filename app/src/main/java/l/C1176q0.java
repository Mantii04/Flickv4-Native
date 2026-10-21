package l;

import android.view.textclassifier.TextClassifier;
import android.widget.TextView;

/* renamed from: l.q0, reason: case insensitive filesystem */
/* loaded from: classes.dex */
public final class C1176q0 {

    /* renamed from: a, reason: collision with root package name */
    public final TextView f17968a;

    /* renamed from: b, reason: collision with root package name */
    public TextClassifier f17969b;

    public C1176q0(TextView textView) {
        this.f17968a = (TextView) L.h.checkNotNull(textView);
    }

    public TextClassifier getTextClassifier() {
        TextClassifier textClassifier = this.f17969b;
        return textClassifier == null ? AbstractC1173p0.a(this.f17968a) : textClassifier;
    }

    public void setTextClassifier(TextClassifier textClassifier) {
        this.f17969b = textClassifier;
    }
}
