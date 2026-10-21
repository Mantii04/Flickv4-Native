package l;

import android.view.View;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class K1 implements View.OnFocusChangeListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchView f17734b;

    public K1(SearchView searchView) {
        this.f17734b = searchView;
    }

    @Override // android.view.View.OnFocusChangeListener
    public void onFocusChange(View view, boolean z6) {
        SearchView searchView = this.f17734b;
        View.OnFocusChangeListener onFocusChangeListener = searchView.f5066T;
        if (onFocusChangeListener != null) {
            onFocusChangeListener.onFocusChange(searchView, z6);
        }
    }
}
