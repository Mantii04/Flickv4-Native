package l4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import androidx.recyclerview.widget.RecyclerView;
import com.skydoves.powerspinner.R;

/* renamed from: l4.b, reason: case insensitive filesystem */
/* loaded from: classes2.dex */
public final class C1229b {

    /* renamed from: a, reason: collision with root package name */
    public final FrameLayout f18152a;

    /* renamed from: b, reason: collision with root package name */
    public final RecyclerView f18153b;

    public C1229b(FrameLayout frameLayout, RecyclerView recyclerView) {
        this.f18152a = frameLayout;
        this.f18153b = recyclerView;
    }

    public static C1229b bind(View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i2 = R.id.recyclerView;
        RecyclerView recyclerView = (RecyclerView) view.findViewById(i2);
        if (recyclerView == null) {
            throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i2)));
        }
        return new C1229b(frameLayout, recyclerView);
    }

    public static C1229b inflate(LayoutInflater layoutInflater, ViewGroup viewGroup, boolean z6) {
        View inflate = layoutInflater.inflate(R.layout.layout_body_power_spinner_library, viewGroup, false);
        if (z6) {
            viewGroup.addView(inflate);
        }
        return bind(inflate);
    }
}
