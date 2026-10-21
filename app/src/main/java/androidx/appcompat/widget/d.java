package androidx.appcompat.widget;

import android.view.inputmethod.InputMethodManager;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class d implements Runnable {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchView.SearchAutoComplete f5188b;

    public d(SearchView.SearchAutoComplete searchAutoComplete) {
        this.f5188b = searchAutoComplete;
    }

    @Override // java.lang.Runnable
    public void run() {
        SearchView.SearchAutoComplete searchAutoComplete = this.f5188b;
        if (searchAutoComplete.f5089p) {
            ((InputMethodManager) searchAutoComplete.getContext().getSystemService("input_method")).showSoftInput(searchAutoComplete, 0);
            searchAutoComplete.f5089p = false;
        }
    }
}
