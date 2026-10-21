package androidx.appcompat.widget;

import android.app.SearchableInfo;
import android.content.ActivityNotFoundException;
import android.content.ComponentName;
import android.content.Intent;
import android.util.Log;
import android.view.View;
import android.widget.ImageView;
import androidx.appcompat.widget.SearchView;

/* loaded from: classes.dex */
public final class a implements View.OnClickListener {

    /* renamed from: b, reason: collision with root package name */
    public final /* synthetic */ SearchView f5186b;

    public a(SearchView searchView) {
        this.f5186b = searchView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        SearchView searchView = this.f5186b;
        ImageView imageView = searchView.f5049C;
        SearchView.SearchAutoComplete searchAutoComplete = searchView.f5085y;
        if (view == imageView) {
            searchView.o(false);
            searchAutoComplete.requestFocus();
            searchAutoComplete.setImeVisibility(true);
            View.OnClickListener onClickListener = searchView.f5067U;
            if (onClickListener != null) {
                onClickListener.onClick(searchView);
                return;
            }
            return;
        }
        if (view == searchView.f5051E) {
            searchView.f();
            return;
        }
        if (view == searchView.f5050D) {
            searchView.i();
            return;
        }
        if (view != searchView.f5052F) {
            if (view == searchAutoComplete) {
                searchView.e();
                return;
            }
            return;
        }
        SearchableInfo searchableInfo = searchView.f5080k0;
        if (searchableInfo == null) {
            return;
        }
        try {
            if (!searchableInfo.getVoiceSearchLaunchWebSearch()) {
                if (searchableInfo.getVoiceSearchLaunchRecognizer()) {
                    searchView.getContext().startActivity(searchView.d(searchView.f5064R, searchableInfo));
                }
            } else {
                Intent intent = new Intent(searchView.f5063Q);
                ComponentName searchActivity = searchableInfo.getSearchActivity();
                intent.putExtra("calling_package", searchActivity == null ? null : searchActivity.flattenToShortString());
                searchView.getContext().startActivity(intent);
            }
        } catch (ActivityNotFoundException unused) {
            Log.w("SearchView", "Could not find voice search activity");
        }
    }
}
