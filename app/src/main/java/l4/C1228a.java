package l4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.widget.AppCompatTextView;
import com.skydoves.powerspinner.R;

/* renamed from: l4.a, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1228a {

    /* renamed from: a, reason: collision with root package name */
    public final AppCompatTextView f18150a;

    /* renamed from: b, reason: collision with root package name */
    public final AppCompatTextView f18151b;

    public C1228a(AppCompatTextView appCompatTextView, AppCompatTextView appCompatTextView2) {
        this.f18150a = appCompatTextView;
        this.f18151b = appCompatTextView2;
    }

    public static C1228a bind(View view) {
        if (view == null) {
            throw new NullPointerException("rootView");
        }
        AppCompatTextView appCompatTextView = (AppCompatTextView) view;
        return new C1228a(appCompatTextView, appCompatTextView);
    }

    public static C1228a inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z6) {
        View inflate = layoutInflater.inflate(R.layout.item_default_power_spinner_library, viewGroup, false);
        if (z6) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }

    public AppCompatTextView getRoot() {
        return this.f18150a;
    }
}
