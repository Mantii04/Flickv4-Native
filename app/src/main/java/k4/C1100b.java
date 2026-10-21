package k4;

import androidx.appcompat.widget.AppCompatTextView;
import com.skydoves.powerspinner.PowerSpinnerView;
import l4.C1228a;
import m1.B0;

/* renamed from: k4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1100b extends B0 {

    /* renamed from: u, reason: collision with root package name */
    public final C1228a f17298u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1100b(C1228a binding) {
        super(binding.getRoot());
        kotlin.jvm.internal.j.checkNotNullParameter(binding, "binding");
        this.f17298u = binding;
    }

    public final void bind(CharSequence item, PowerSpinnerView spinnerView) {
        kotlin.jvm.internal.j.checkNotNullParameter(item, "item");
        kotlin.jvm.internal.j.checkNotNullParameter(spinnerView, "spinnerView");
        C1228a c1228a = this.f17298u;
        AppCompatTextView appCompatTextView = c1228a.f18151b;
        appCompatTextView.setText(item);
        appCompatTextView.setTypeface(spinnerView.getTypeface());
        appCompatTextView.setGravity(spinnerView.getGravity());
        appCompatTextView.setTextSize(0, spinnerView.getTextSize());
        appCompatTextView.setTextColor(spinnerView.getCurrentTextColor());
        c1228a.getRoot().setPadding(spinnerView.getPaddingLeft(), spinnerView.getPaddingTop(), spinnerView.getPaddingRight(), spinnerView.getPaddingBottom());
    }
}
