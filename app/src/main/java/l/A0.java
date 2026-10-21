package l;

import android.view.textclassifier.TextClassifier;
import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes.dex */
public class A0 implements InterfaceC1202z0 {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ AppCompatTextView f17649a;

    public A0(AppCompatTextView appCompatTextView) {
        this.f17649a = appCompatTextView;
    }

    public int getAutoSizeMaxTextSize() {
        int autoSizeMaxTextSize;
        autoSizeMaxTextSize = super/*android.widget.TextView*/.getAutoSizeMaxTextSize();
        return autoSizeMaxTextSize;
    }

    public int getAutoSizeMinTextSize() {
        int autoSizeMinTextSize;
        autoSizeMinTextSize = super/*android.widget.TextView*/.getAutoSizeMinTextSize();
        return autoSizeMinTextSize;
    }

    public int getAutoSizeStepGranularity() {
        int autoSizeStepGranularity;
        autoSizeStepGranularity = super/*android.widget.TextView*/.getAutoSizeStepGranularity();
        return autoSizeStepGranularity;
    }

    public int[] getAutoSizeTextAvailableSizes() {
        int[] autoSizeTextAvailableSizes;
        autoSizeTextAvailableSizes = super/*android.widget.TextView*/.getAutoSizeTextAvailableSizes();
        return autoSizeTextAvailableSizes;
    }

    public int getAutoSizeTextType() {
        int autoSizeTextType;
        autoSizeTextType = super/*android.widget.TextView*/.getAutoSizeTextType();
        return autoSizeTextType;
    }

    public TextClassifier getTextClassifier() {
        TextClassifier textClassifier;
        textClassifier = super/*android.widget.TextView*/.getTextClassifier();
        return textClassifier;
    }

    public void setAutoSizeTextTypeUniformWithConfiguration(int i2, int i7, int i8, int i9) {
        super/*android.widget.TextView*/.setAutoSizeTextTypeUniformWithConfiguration(i2, i7, i8, i9);
    }

    public void setAutoSizeTextTypeUniformWithPresetSizes(int[] iArr, int i2) {
        super/*android.widget.TextView*/.setAutoSizeTextTypeUniformWithPresetSizes(iArr, i2);
    }

    public void setAutoSizeTextTypeWithDefaults(int i2) {
        super/*android.widget.TextView*/.setAutoSizeTextTypeWithDefaults(i2);
    }

    public void setTextClassifier(TextClassifier textClassifier) {
        super/*android.widget.TextView*/.setTextClassifier(textClassifier);
    }

    @Override // l.InterfaceC1202z0
    public void setFirstBaselineToTopHeight(int i2) {
    }

    @Override // l.InterfaceC1202z0
    public void setLastBaselineToBottomHeight(int i2) {
    }
}
