package l;

import androidx.appcompat.widget.AppCompatTextView;

/* loaded from: classes.dex */
public final class B0 extends A0 {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ AppCompatTextView f17656b;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public B0(AppCompatTextView appCompatTextView) {
        super(appCompatTextView);
        this.f17656b = appCompatTextView;
    }

    @Override // l.A0, l.InterfaceC1202z0
    public void setFirstBaselineToTopHeight(int i2) {
        super/*android.widget.TextView*/.setFirstBaselineToTopHeight(i2);
    }

    @Override // l.A0, l.InterfaceC1202z0
    public void setLastBaselineToBottomHeight(int i2) {
        super/*android.widget.TextView*/.setLastBaselineToBottomHeight(i2);
    }
}
